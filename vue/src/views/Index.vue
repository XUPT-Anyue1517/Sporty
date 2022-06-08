<template>
  <div>
    <div class="block text-center">
      <el-carousel height="650px">
        <el-carousel-item v-for="item in car_img" >
          <img :src="item" class="small justify-center" style="width: 100%"/>
        </el-carousel-item>
      </el-carousel>
    </div>

    <!-- <div class=" container">
      <div class="row">

        <div class="row mb-2">
          <div class="col-md-6">
            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
              <div class="col p-4 d-flex flex-column position-static">
                <strong class="d-inline-block mb-2 text-primary">World</strong>
                <h3 class="mb-0">Featured post</h3>
                <div class="mb-1 text-muted">Nov 12</div>
                <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="stretched-link">Continue reading</a>
              </div>
              <div class="col-auto d-none d-lg-block">
                <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
              <div class="col p-4 d-flex flex-column position-static">
                <strong class="d-inline-block mb-2 text-success">Design</strong>
                <h3 class="mb-0">Post title</h3>
                <div class="mb-1 text-muted">Nov 11</div>
                <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="stretched-link">Continue reading</a>
              </div>
              <div class="col-auto d-none d-lg-block">
                <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

              </div>
            </div>
          </div>
        </div>

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your mind.</span></h2>
            <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
          </div>
          <div class="col-md-5">
            <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

          </div>
        </div>

      </div>


    </div> -->


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
 
  <el-row justify="center" style="margin-top:20px">
    <el-col :span="10">
      
    <h1 class="display-4">Welcome To Modified Club</h1>
    <p class="text-info-two">&nbsp;&nbsp;&nbsp;&nbsp;Our life more and more close with cars, people demand for cars is no longer a simple transport, the pursuit of personality, fashion has become people to the new demand for cars, and the subsequent car modification are also increasingly popular, young people like to pursuit of "personal style" and "fun to drive", is becoming more and more people in a modified today,Lit up countless car owners passionate wandering heart.</p>
 
    </el-col >
    <el-col :span="10">
      <el-image  :src="right_img" style="padding:0 10px;margin-top:10px">
      </el-image>
    </el-col>
  </el-row>


   <el-row justify="center" style="margin-top:60px">
    <el-col :span="10">
      <el-image  :src="left_img" style="padding:0 10px;margin-top:10px;">
      </el-image>
    </el-col>
     <el-col :span="10">
        <p class="text-info-two">&nbsp;&nbsp;&nbsp;&nbsp;Car modification refers to the modification of external modeling, internal modeling and mechanical properties of the original car produced by automobile manufacturers according to the needs of car owners, mainly including body modification and power modification.
Automobile modification is known as Auto Tunning in Europe. It refers to the personalized upgrade of vehicles based on the original mass-produced vehicles in view of the weaknesses of the vehicles themselves or the owners' special requirements for certain performance.</p>
    
    </el-col >
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