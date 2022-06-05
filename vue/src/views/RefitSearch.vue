<template>
  <div>

    <div>
      <el-row justify="center">
        <refit-search-header-main/>

        <div style="width: 75%;height: 400px;margin: 15px auto">
          <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
            精品轮毂
          </h2>
          <el-table :data="tableData_LG" style="width: 100%">
            <el-table-column  prop="img" label="图片" width="330">
              <template #default="scope">
                <el-image
                    style="width: 90px; height: 90px;border-radius: 10px"
                    :src="scope.row.img"/>
              </template>
            </el-table-column>
            <el-table-column prop="name" label="名称" width="250" />
            <el-table-column prop="type" label="类型" width="200" />
            <el-table-column prop="country" label="国别" width="200" />
            <el-table-column  width="184" label="查看详情"  >
            <template #default="scope">
              <el-button size="large" @click="handleOpen(scope.row.name)">详情页面></el-button>
            </template>
          </el-table-column>>
          </el-table>
        </div>


        <div style="width: 75%;height: 400px;margin: 15px auto">
          <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
            刹车系统
          </h2>
          <el-table :data="tableData_SC" style="width: 100%">
            <el-table-column  prop="img" label="图片" width="330">
              <template #default="scope">
                <el-image
                    style="width: 90px; height: 90px;border-radius: 10px"
                    :src="scope.row.img"/>
              </template>
            </el-table-column>
            <el-table-column prop="name" label="名称" width="250" />
            <el-table-column prop="type" label="类型" width="200" />
            <el-table-column prop="country" label="国别" width="200" />
            <el-table-column  width="184" label="查看详情"  >
              <template #default="scope">
                <el-button size="large" @click="handleOpen(scope.row.name)">详情页面></el-button>
              </template>
            </el-table-column>>
          </el-table>
        </div>


        <div style="width: 75%;height: 400px;margin: 15px auto">
          <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
            避震悬挂
          </h2>
          <el-table :data="tableData_BZ" style="width: 100%">
            <el-table-column  prop="img" label="图片" width="330">
              <template #default="scope">
                <el-image
                    style="width: 90px; height: 90px;border-radius: 10px"
                    :src="scope.row.img"/>
              </template>
            </el-table-column>
            <el-table-column prop="name" label="名称" width="250" />
            <el-table-column prop="type" label="类型" width="200" />
            <el-table-column prop="country" label="国别" width="200" />
            <el-table-column  width="184" label="查看详情"  >
              <template #default="scope">
                <el-button size="large" @click="handleOpen(scope.row.name)">详情页面></el-button>
              </template>
            </el-table-column>>
          </el-table>
        </div>

        <div style="width: 75%;height: 400px;margin: 15px auto 100px">
          <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
            进气排气
          </h2>
          <el-table :data="tableData_PQ" style="width: 100%">
            <el-table-column  prop="img" label="图片" width="330">
              <template #default="scope">
                <el-image
                    style="width: 90px; height: 90px;border-radius: 10px"
                    :src="scope.row.img"/>
              </template>
            </el-table-column>
            <el-table-column prop="name" label="名称" width="250" />
            <el-table-column prop="type" label="类型" width="200" />
            <el-table-column prop="country" label="国别" width="200" />
            <el-table-column  width="184" label="查看详情"  >
              <template #default="scope">
                <el-button size="large" @click="handleOpen(scope.row.name)">详情页面></el-button>
              </template>
            </el-table-column>>
          </el-table>
        </div>




      </el-row>
    </div>
  </div>
</template>

<script>
import { Search } from '@element-plus/icons-vue'
import request from "@/utils/request";
import router from "@/router";

import RefitSearchHeaderMain from "@/views/RefitSearchHeaderMain"

export default {
  name: "RefitSearch",
  data(){
    return{
      path:this.$route.path,
      tableData_LG:[],
      tableData_SC:[],
      tableData_BZ:[],
      tableData_PQ:[],
      logos_img:require("../assets/img/car/car_logo/audi.png"),
      pageNum:1,
      pageSize: 100,
      search:'',
    }
  },
  created() {
    this.load()
  },
  components:{
    RefitSearchHeaderMain
  },
  methods:{
    loadPage(){
    },
    load(){
      this.carName = this.$route.query.chineseName
      request.get("/brand",{
        params:{
          pageNum:'',
          pageSize:'',
          search:this.carName
        }
      }).then(res => {
        console.log(res);
        // this.tableData = res.data.records
        // this.total = res.data.total

        this.carLogo = res.data.records[0].logo
        this.carEngName = res.data.records[0].englishName
        this.carCountry = res.data.records[0].country
        this.carIntro = res.data.records[0].intro
      })
    },
    handleOpen(chineseName){
      this.$router.push({
        path: '路由地址',
        query: {
          chineseName: chineseName
        }
      })
    }
  }
}
</script>

<style scoped>
.header_refit_logo{
  width: 47.5%;
  margin: 5px;
  border-radius: 6px;
}

.el-carousel__item h3 {
  color: #475669;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
  text-align: center;
}
.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}


.el-row {
  margin-bottom: 20px;
}
.el-row:last-child {
  margin-bottom: 0;
}
.el-col {
  border-radius: 4px;
}

.grid-content {
  border-radius: 4px;
  min-height: 36px;
}


.demo-image .block {
  padding: 30px 0;
  text-align: center;
  border-right: solid 1px var(--el-border-color);
  display: inline-block;
  width: 20%;
  box-sizing: border-box;
  vertical-align: top;
}
.demo-image .block:last-child {
  border-right: none;
}
.demo-image .demonstration {
  display: block;
  color: var(--el-text-color-secondary);
  font-size: 14px;
  margin-bottom: 20px;
}

.el-row {
  margin-bottom: 20px;
}
.el-row:last-child {
  margin-bottom: 0;
}
.el-col {
  border-radius: 4px;
}

.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
</style>




