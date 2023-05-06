<template>
  <div style="margin-top:40px">
    <el-row justify="center">
      <el-col :span="11">
        <el-carousel :interval="5000" arrow="always" height="390px" style="margin-top:5px">
          <el-carousel-item v-for="item in carCaseLeft_img" :key="item">
            <el-image  :src="item" :fit="fit"  />
          </el-carousel-item>
         </el-carousel>
      </el-col>
      <el-col :span="7">
        <div style="margin-left: 20px;">
            <div class="demo-image">
              <div v-for="item in carCaseRight_img" :key="item" class="block">  
                <el-image style="width:430px;height:190px;margin-top: 5px;" :src="item" :fit="fit" />
              </div>
            </div>
        </div>
      </el-col>
    </el-row>

    <el-row :gutter="24" style="margin:30px 130px">
      <div style="width: 100%;">
        <el-button @click="writeBlog" type="primary" size="large" style="float: right;margin-right: 100px;font-weight: bolder;font-size: 17px" >写博客</el-button>
      </div>
      <el-col :span="6" v-for="item in showCar" :key="item">
        <el-card style="width:290px;margin:20px 0;cursor: pointer" @click="handleOpen(item.title)">
<!--          <img :src="item" class="image" style="width:250px;height:190px"/>-->
          <div style="overflow: hidden;width:250px;height:190px" >
            <el-image  :src="item.img" :fit="fill" class="image" style="width: 100%" />
          </div>

        <div style="padding: 14px">
          <span>{{ item.title }}</span>
          <div class="bottom">
            <el-button text class="button" @click="openCar(item.car)">{{ item.car }}</el-button>
          </div>
        </div>
        </el-card>
      </el-col>
    </el-row>

    

  </div>
</template>

<script>
import request from "@/utils/request";

export default {
  name: "RefitCase",
  data(){
    return{
      path:this.$route.path,
      carCaseLeft_img:[
        require("../assets/img/car/car_img/car_Case/502993.jpg"),
        require("../assets/img/car/car_img/car_Case/bb.jpg"),
        require("../assets/img/car/car_img/car_Case/3.webp"),
        require("../assets/img/car/car_img/car_Case/4.webp")
      ],
      carCaseRight_img:[
        require("../assets/img/car/car_img/car_Case/5.webp"),
        require("../assets/img/car/car_img/car_Case/6.webp"),
       
      ],
      showCar:[
      ],
    }
  },
  created() {
    this.load()
  },
  methods:{
    load(){
      request.get("/refitcase",{
        params:{
          pageNum:1,
          pageSize:100,
          search:'',
        }
      }).then(res => {
        console.log(res);
        this.showCar = res.data.records
        this.total = res.data.total
      })
    },
    handleOpen(title){
      // this.$router.push({
      //   path: '/refitcaseessay',
      //   query: {
      //     search: title
      //   }
      // })
      window.open("http://localhost:9876/refitcaseessay?search=" + title)
    },
    writeBlog(){
      this.$router.push('/writeblog')
    },
    openCar(car){
      window.open("https://www.dongchedi.com/search?keyword=" + car)
    }
  }
}
</script>

<style scoped>
.el-carousel__item h3 {
  color: #475669;
  opacity: 0.75;
  line-height: 300px;
  margin: 0;
  text-align: center;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}

.time {
  font-size: 12px;
  color: #999;
}

.bottom {
  margin-top: 13px;
  line-height: 12px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.button {
  padding: 0;
  min-height: auto;
}

.image {
  width: 100%;
  display: block;
}
</style>