<template>
  <div style="margin-top:40px">
    <el-row justify="center">
      <el-col :span="11">
        <el-carousel :interval="5000" arrow="always" height="390px" style="margin-top:5px">
          <el-carousel-item v-for="item in carCaseLeft_img" :key="item">
            <el-image  :src="item" :fit="cover" style="height: 100%;width: 103%;"  />
          </el-carousel-item>
        </el-carousel>
      </el-col>
      <el-col :span="7">
        <div style="margin-left: 20px;">
          <div class="demo-image">
            <div v-for="item in carCaseRight_img" :key="item" class="block"
                 style="width:430px;height:190px;overflow: hidden;margin-top: 7px;">
              <el-image  :src="item" :fit="cover" style="width: 100%;height: 110%;" />
            </div>
          </div>
        </div>
      </el-col>
    </el-row>

    <el-row :gutter="24" style="margin:0 130px">
      <el-col :span="6" v-for="item in showCar" :key="item">
        <el-card style="width:290px;margin:20px 0">
          <!--          <img :src="item" class="image" style="width:250px;height:190px"/>-->
          <div style="overflow: hidden;width:250px;height:190px" >
            <el-image  :src="item" :fit="fill" class="image" style="width: 100%" />
          </div>

          <div style="padding: 14px">
            <span>Yummy hamburger</span>
            <div class="bottom">
              <el-button text class="button">Operating</el-button>
            </div>
          </div>
        </el-card>
      </el-col>

    </el-row>



  </div>
</template>

<script>
export default {
  name: "CarNews",
  data(){
    return{
      path:this.$route.path,
      carCaseLeft_img:[
        require("../assets/img/car/car_img/car_News/CarNews_1.jpg"),
        require("../assets/img/car/car_img/car_News/CarNews_2.png"),
        require("../assets/img/car/car_img/car_News/CarNews_3.jpg"),
        require("../assets/img/car/car_img/car_News/CarNews_4.jpg")
      ],
      carCaseRight_img:[
        require("../assets/img/car/car_img/car_News/CarNews_right_1.jpg"),
        require("../assets/img/car/car_img/car_News/CarNews_right_2.gif"),

      ],
      showCar:[
        require("../assets/img/car/car_img/car_Case/show1.jpg"),
        require("../assets/img/car/car_img/car_Case/show2.jpg"),
        require("../assets/img/car/car_img/car_Case/show3.jpg"),
        require("../assets/img/car/car_img/car_Case/show4.jpg"),
        require("../assets/img/car/car_img/car_Case/show5.jpg"),
        require("../assets/img/car/car_img/car_Case/show6.jpg"),
        require("../assets/img/car/car_img/car_Case/show7.jpg"),
        require("../assets/img/car/car_img/car_Case/show8.jpg"),
      ],

    }
  },
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