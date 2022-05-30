<template>
  <div>
    <div class="block text-center">
      <el-carousel height="650px">
        <el-carousel-item v-for="item in car_img" >
          <img :src="item" class="small justify-center" style="width: 100%"/>
        </el-carousel-item>
      </el-carousel>
    </div>



  </div>
</template>

<script>
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
      ]
    }
  },
  created() {
    console.log(this.$route.path)
  }
}
</script>

<style scoped>

</style>