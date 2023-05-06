<template>
  <div>

    <div>
      <el-row justify="center">
        <div style="background-color: #343536;color:#fff;width: 100%;clear: both;margin: 0 auto;float: left;padding: 40px 210px 30px">
          <img :src="carLogo" style="background-color: #fff;border-radius: 10px;float: left" width="130" height="130" :alt="carName">
          <div style="width: 17%; margin:0 20px;float: left" >
            <h1 style="font-weight: bolder">{{ carName }}</h1>
            <p style="padding: 0 5px;font-size: 20px">{{ carEngName }}</p>
            <p style="padding: 0 5px;font-size: 17px">{{ carCountry }}</p>
          </div>
          <div style="width: 65%; margin:0 20px;float: left;height: 100%;" >
            <p style="font-family: 'HarmonyOS Sans SC',serif;font-size: 17px">
              {{carIntro}}
            </p>
          </div>
        </div>

        <div style="width: 75%;height: 80px;">
          <el-row :gutter="20" style="margin-top: 20px;margin-left: 50px">
            <el-col :span="6"><el-button  type="warning" size="large" @click="search1(carName)">去<span style="font-weight: bolder">懂车帝</span>搜索&nbsp;<span style="font-weight: bolder">{{carName}}</span>&nbsp;></el-button></el-col>
            <el-col :span="6"><el-button type="danger" size="large" @click="search2(carName)">去<span style="font-weight: bolder">汽车之家</span>搜索&nbsp;<span style="font-weight: bolder">{{carName}}</span>&nbsp;></el-button></el-col>
            <el-col :span="6"><el-button type="primary" size="large" @click="search3(carName)">去<span style="font-weight: bolder">易车</span>搜索&nbsp;<span style="font-weight: bolder">{{carName}}</span>&nbsp;></el-button></el-col>
            <el-col :span="6"><el-button type="default" size="large" @click="search4(carName)">去<span style="font-weight: bolder">百度百科</span>搜索&nbsp;<span style="font-weight: bolder">{{carName}}</span>&nbsp;></el-button></el-col>
          </el-row>

        </div>

        <el-col :span="18">

          <el-table :data="tableData" style="width: 100%;margin-top:20px" >
            <el-table-column  prop="img" label="图片" width="330">

              <template #default="scope">
                <el-image
                    style="width: 230px; height: 170px;border-radius: 10px"
                    :src="scope.row.img"
                />
              </template>
            </el-table-column>
            <el-table-column prop="name" label="名称" width="184" sortable />
            <el-table-column prop="type" label="类型" width="150" sortable />
            <el-table-column prop="price" label="官价" width="220" sortable />
<!--            <el-table-column prop="sale_price" label="售价" width="150"  />-->
            <el-table-column prop="repertory" label="库存" width="120"  />
            <el-table-column  width="184" label="查看车辆"  >

              <template #default="scope">
                <el-button size="large" @click="handleOpen(scope.row.name)">详情页面></el-button>
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
      tableData:[],
      logos_img:require("../assets/img/car/car_logo/audi.png"),
      pageNum:1,
      pageSize: 100,
      search:'',
      carName:'',
      carLogo:'',
      carEngName:'',
      carCountry:'',
      carIntro:''
    }
  },
  created() {
    this.load()
    this.loadCar()
  },
  methods:{
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
    loadCar(){

      request.get("/car",{
        params:{
          pageNum:'1',
          pageSize:'5',
          name:this.$route.query.chineseName
        }
      }).then(res1 => {
        console.log(res1);
        this.tableData = res1.data.records
        // this.total = res1.data.total

        // this.carLogo = res.data.records[0].logo
        // this.carEngName = res.data.records[0].englishName
        // this.carCountry = res.data.records[0].country
        // this.carIntro = res.data.records[0].intro
      })
    },
    handleOpen(name){
      this.$router.push({
        path: '/carpurchase',
        query: {
          name: name
        }
      })
    },
    search1(carName){
      window.open("https://www.dongchedi.com/search?keyword=" + carName)
    },
    search2(carName){
      window.open("http://db.auto.sina.com.cn/search/?search_txt=" + carName)
    },
    search3(carName){
      window.open("https://so.yiche.com/qiche/" + carName)
    },
    search4(carName){
      window.open("https://www.baidu.com/s?wd=" + carName)
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




