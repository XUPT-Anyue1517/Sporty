<template>
  <div>

    <div>
      <el-row justify="center">
        <refit-search-header-main/>

        <div style="width: 75%;margin: 15px auto">
          <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
            精品轮毂
          </h2>
          <el-table :data="tableData_LG" style="width: 100%">
            <el-table-column  prop="img" label="图片" width="130">
              <template #default="scope">
                <el-image
                    style="width: 90px; height: 90px;border-radius: 10px"
                    :src="scope.row.img"/>
              </template>
            </el-table-column>
            <el-table-column prop="name" label="名称" width="450" />
            <el-table-column prop="type" label="类型" width="100" />
            <el-table-column prop="brand" label="品牌" width="100" />
            <el-table-column prop="price" label="定价(元)" width="100" />
            <el-table-column prop="salePrice" label="售价(元)" width="100" />
            <el-table-column  width="184" label="查看详情">
            <template #default="scope">
              <el-button size="large" @click="handleOpen(scope.row.name)">详情页面></el-button>
            </template>
          </el-table-column>>
          </el-table>
        </div>


        <div style="width: 75%;height: 800px;margin: 15px auto">
          <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
            刹车系统
          </h2>
          <el-table :data="tableData_SC" style="width: 100%">
            <el-table-column  prop="img" label="图片" width="130">
              <template #default="scope">
                <el-image
                    style="width: 90px; height: 90px;border-radius: 10px"
                    :src="scope.row.img"/>
              </template>
            </el-table-column>
            <el-table-column prop="name" label="名称" width="450" />
            <el-table-column prop="type" label="类型" width="100" />
            <el-table-column prop="brand" label="品牌" width="100" />
            <el-table-column prop="price" label="定价(元)" width="100" />
            <el-table-column prop="salePrice" label="售价(元)" width="100" />
            <el-table-column  width="184" label="查看详情"  >
              <template #default="scope">
                <el-button size="large" @click="handleOpen(scope.row.name)">详情页面></el-button>
              </template>
            </el-table-column>>
          </el-table>
        </div>


        <div style="width: 75%;height: 800px;margin: 15px auto">
          <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
            避震悬挂
          </h2>
          <el-table :data="tableData_BZ" style="width: 100%">
            <el-table-column  prop="img" label="图片" width="130">
              <template #default="scope">
                <el-image
                    style="width: 90px; height: 90px;border-radius: 10px"
                    :src="scope.row.img"/>
              </template>
            </el-table-column>
            <el-table-column prop="name" label="名称" width="450" />
            <el-table-column prop="type" label="类型" width="100" />
            <el-table-column prop="brand" label="品牌" width="100" />
            <el-table-column prop="price" label="定价(元)" width="100" />
            <el-table-column prop="salePrice" label="售价(元)" width="100" />
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
      tableData_LG:[
      //     {
      //   img:'',
      //   name:'',
      //   type:'精品轮毂',
      //   country:''
      // },{
      //   img:'',
      //   name:'',
      //   type:'精品轮毂',
      //   country:''
      // },{
      //   img:'',
      //   name:'',
      //   type:'精品轮毂',
      //   country:''
      // },{
      //   img:'',
      //   name:'',
      //   type:'精品轮毂',
      //   country:''
      // },{
      //   img:'',
      //   name:'',
      //   type:'精品轮毂',
      //   country:''
      // },{
      //   img:'',
      //   name:'',
      //   type:'精品轮毂',
      //   country:''
      // }

      ],
      tableData_SC:[],
      tableData_BZ:[],
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
      // this.carName = this.$route.query.chineseName
      request.get("/refit",{
        params:{
          pageNum:1,
          pageSize:1000,
          search:this.search
        }
      }).then(res => {
        console.log(res);
        let lg=0,sc=0
        for(let i = 0;i < res.data.records.length;i++){
          if(res.data.records[i].type === '精品轮毂'){
            this.tableData_LG[lg] = res.data.records[i]
            lg++
          }else if(res.data.records[i].type === '刹车系统'){
            this.tableData_SC[lg] = res.data.records[i]
            lg++
          }else if(res.data.records[i].type === '避震悬挂'){
            this.tableData_BZ[lg] = res.data.records[i]
            lg++
          }
        }
      })
    },
    handleOpen(name){
      this.$router.push({
        path: '/refitpurchase',
        query: {
          name: name
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




