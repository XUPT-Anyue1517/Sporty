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


    <h2 style="border-bottom: 5px #ec1111 solid;
                      text-align: center;font-weight: bolder;width: 40%;margin: 20px auto">
      发布博客
    </h2>
    <el-row :gutter="24" style="margin:0 130px">
<!--      <input style="width: 100%;font-size: 20px;margin: 20px auto" type="text" placeholder="请输入文章标题">-->
<!--      <textarea style="width: 100%;font-size: 20px" placeholder="请输入博 客内容..."/>-->
<!--      <el-input style="width: 100%;font-size: 20px;margin: 20px auto" v-model="blogTitle" placeholder="请输入文章标题" clearable />-->
<!--      <el-input-->
<!--          v-model="blogContent"-->
<!--          :rows="5"-->
<!--          type="textarea"-->
<!--          placeholder="请输入博客内容..."-->
<!--          style="width: 100%;font-size: 20px;margin-bottom: 100px;"-->
<!--      />-->

      <el-form :model="form" style="width: 100%;margin-bottom: 200px" >
        <el-form-item style="text-align: center" label-width="0">
          <el-upload
              class="avatar-uploader"
              action="http://localhost:8080/files/upload"
              :show-file-list="false"
              :on-success="handleAvatarSuccess"
              style="margin: 5px auto;width: 80%"
          >
            <img :src="form.img" width="250" height="150" class="avatar " style="border-radius: 10px">
          </el-upload>
        </el-form-item>
        <el-form-item label="标题">
          <el-input v-model="form.title" style="width:90%"></el-input>
        </el-form-item>
        <el-row :gutter="16" style="clear:both;">
          <el-col :span="11">
            <el-form-item label="类型">
              <el-select v-model="form.type" placeholder="请选择类型" style="width:100%">
                <el-option label="汽车" value="汽车" />
                <el-option label="改装" value="改装" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col  :span="10">
            <el-form-item label="相关车辆">
              <el-input v-model="form.car" style="width:100%"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-form-item label="内容">
          <el-input type="textarea" :rows="5" v-model="form.body" style="width:90%"/>
        </el-form-item>
        <el-input type="input" hidden :rows="5" v-model="form.cusId" style="width:90%"/>
        <span style="float: right;margin-right: 100px">
            <el-button type="danger" size="large" style="font-weight: bolder;font-size: 17px" @click="save">发布</el-button>
        </span>
      </el-form>
    </el-row>

    

  </div>
</template>

<script>
import request from "@/utils/request";
import router from "@/router";
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
      showCar:[],
      blogTitle:'',
      blogContent:'',
      form:{},
      form1:{}
    }
  },
  created() {

    let str = sessionStorage.getItem("user") || "{}"
    if(str === '{}'){
      this.$message.error("请先登录")
      router.push("/userlogin")
    }
    this.load()
    // this.form.cusId = JSON.parse(str).id
    this.form1 = JSON.parse(str)
    console.log(this.form1)
    this.form.cusId = this.form1.id
    console.log(this.form.cusId)

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
        // console.log(res);
        this.showCar = res.data.records
        this.total = res.data.total
      })
    },
    save(){
      request.post("/refitcase",this.form).then(res => {
        console.log(res)
        if(res.code == 0 ){
          this.$message.success("发布成功")
        }else{
          this.$message.error(res.msg)
        }
        this.$router.push('/blog')
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
    handleAvatarSuccess(res) {
      this.form.img = res.data
      this.$message.success("上传成功")
      this.update()
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