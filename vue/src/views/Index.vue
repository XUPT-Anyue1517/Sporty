<template>
  <div>
    <div class="block text-center">
      <el-carousel height="650px">
        <el-carousel-item v-for="item in car_img" >
          <img :src="item" class="small justify-center" style="width: 100%"/>
        </el-carousel-item>
      </el-carousel>
    </div>


     <el-row gutter="60" justify="center">
    <el-col
      v-for="item in show_img"
      :key="item"
      :span="6"
      style="margin:20px"
    >
      <el-card :body-style="{ padding: '0px' }">
        <img :src="item.path" class="image" />
        <div style="padding: 14px">
          <span class="car-text">{{item.message}}</span>
          <div class="bottom">
            <time class="time">{{ currentDate }}</time>
            <el-button text class="button" >Details</el-button>
          </div>
        </div>
      </el-card>
    </el-col>
  </el-row>

      
  </div>
</template>

<script>
import { ref } from 'vue'
export default {
  name: "Index",
  data(){
    return{
      path:this.$route.path,
      car_img:[
        require("../assets/img/car/car_img/wallhaven-n63966_1920x1080.png"),
        require("../assets/img/car/car_img/wallhaven-4gg7l7_1920x1080.png"),
        require("../assets/img/car/car_img/wallhaven-ymzzdl_1920x1080.png"),
        require("../assets/img/car/car_img/wallhaven-43kdr6.jpg")
      ],
      show_img:[
        {
          path:require("../assets/img/car/car_img/car_Index/9.webp"),
          message:"暴力骑士",
        },
         {
          path:require("../assets/img/car/car_img/car_Index/12.webp"),
          message:"暴力骑士",
        },
         {
          path:require("../assets/img/car/car_img/car_Index/13.webp"),
          message:"暴力骑士",
        },
        
        {
          path:require("../assets/img/car/car_img/car_Index/14.webp"),
          message:"暴力骑士",
        },

         {
          path:require("../assets/img/car/car_img/car_Index/15.webp"),
          message:"暴力骑士",
        },
        {
          path:require("../assets/img/car/car_img/car_Index/16.webp"),
          message:"暴力骑士",
        },
        {
          path:require("../assets/img/car/car_img/car_Index/17.webp"),
          message:"暴力骑士",
        },
        {
          path:require("../assets/img/car/car_img/car_Index/10.webp"),
          message:"暴力骑士",
        },
      ],
      right_img:require("../assets/img/car/car_img/car_Index/2.webp"),
      left_img:require("../assets/img/car/car_img/car_Index/1.webp"),
      
    }
  },
  created() {
    console.log(this.$route.path)
  },
  setup(){
    const currentDate = ref(new Date());
    return {
      currentDate,
    }
  }
}
</script>

<style scoped>
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
  color:#57A9FB;
  padding:2px 5px;
}

.image {
  width: 100%;
  display: block;
 
}

.car-text{
  font-size:14px;
  font-weight: 600;
  font-family:Arial, sans-serif;
}

.show-info{
 
}
.text-info-one{
  color:#6b7785;
  font-family:sans-serif;

}
.text-info-two{
  margin:30px 10px;
  color:#6b7785;
  font-family:sans-serif;
}
</style>