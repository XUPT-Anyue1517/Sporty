<template>
  <div>
    <div>
      <el-carousel :interval="4000" type="card" height="250px">
        <el-carousel-item v-for="item in car_img" :key="item">
          <img :src="item" class="small justify-center" style="width: 100%"/>
        </el-carousel-item>
      </el-carousel>
    </div>
    <div>
      <el-row justify="center">
        <el-col :span="4" >
          <el-image style="width: 100px; height: 100px" :src="car_logo[0]" fit="fit" />
        </el-col>
        <el-col :span="4" >
          <el-image style="width: 100px; height: 100px" :src="car_logo[1]" fit="fit" />
        </el-col>
        <el-col :span="4"  >
          <el-image style="width: 100px; height: 100px" :src="car_logo[2]" fit="fit" />
        </el-col>
        <el-col :span="4" >
          <el-image style="width: 100px; height: 100px" :src="car_logo[3]" fit="fit" />
        </el-col>
      </el-row>
    </div>
    <div>
      <el-row justify="center">
        <el-col :span="18">
          <div style="width: 100%;clear: both">
            <h1 style="display:inline-block;margin:10px 0" >汽车查询</h1>
            <div style="flex: 1"></div>
            <div style="float: right;width: 50%">

              <el-button type="primary" style="margin:0 10px;float: right" @click="load">搜索</el-button>
              <el-input v-model="search" placeholder="请输入关键字" @keyup.enter="load" style="width: 50%;float: right"  clearable />

            </div>
          </div>
          <el-table :data="tableData" style="width: 100%;margin-top:20px" >
            <el-table-column  prop="logo" label="车标" width="284">

              <template #default="scope">
                <el-image
                    style="width: 90px; height: 90px;border-radius: 10px"
                    :src="scope.row.logo"
                />
              </template>
            </el-table-column>
            <el-table-column prop="chineseName" label="中文名" width="284" sortable />
            <el-table-column prop="englishName" label="英文名" width="284" sortable />
            <el-table-column  width="284">
              <template #default="scope">
                <el-button size="large" @click="handleOpen(scope.row.chineseName)">详情页面></el-button>
              </template>
            </el-table-column>>
          </el-table>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
import { Search } from '@element-plus/icons-vue'
import request from "@/utils/request";
import router from "@/router";
export default {
  name: "BrandSearch",
  data(){
    return{
      path:this.$route.path,
      car_img:[
        require("../assets/img/car/car_img/wallhaven-n63966_1920x1080.png"),
        require("../assets/img/car/car_img/wallhaven-4gg7l7_1920x1080.png"),
        require("../assets/img/car/car_img/wallhaven-ymzzdl_1920x1080.png"),
        require("../assets/img/car/car_img/wallhaven-43kdr6.jpg")
      ],
      car_logo:[
        require("../assets/img/car/car_logo/audi.png"),
        require("../assets/img/car/car_logo/audi.png"),
        require("../assets/img/car/car_logo/audi.png"),
        require("../assets/img/car/car_logo/audi.png"),
      ],
      tableData:[],
      logos_img:require("../assets/img/car/car_logo/audi.png"),
      pageNum:1,
      pageSize: 100,
      search:'',

    }
  },
  created() {
    this.load()
  },
  methods:{
    load(){
      request.get("/brand",{
        params:{
          pageNum:this.pageNum,
          pageSize:this.pageSize,
          search:this.search
        }
      }).then(res => {
        console.log(res);
        this.tableData = res.data.records
        this.total = res.data.total
      })
    },
    handleOpen(chineseName){
      this.$router.push({
        path: '/carsearch',
        query: {
          chineseName: chineseName
        }
      })
    }
  }
}
</script>

<style scoped>
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




