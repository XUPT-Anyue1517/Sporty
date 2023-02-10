<template>

  
  <div>
    <h1 class="title" style="border-bottom: 5px solid #000 ;margin: 20px 600px">车型识别</h1>
    <el-row justify="center">
      <el-col :span="10">

        <el-upload
            class="avatar-uploader"
            action="http://localhost:8080/carai/upload"
            :show-file-list="false"
            :on-success="handleAvatarSuccess"
            style="margin: 5px auto;width: 100%;"
        >
          <img  :src="car_img" id="imgshow" class="avatar" style="width: 650px;"/>
        </el-upload>

        <el-button type="primary" size="large" @click="CarAI" style="font-size: 19px;margin: 5px auto;width: 650px;">开始识别</el-button>

      </el-col>

      <el-col :span="6" style="padding-top:10px;margin: 0 10px" >
        <h2 style="margin-top: 10px">名称：{{CarResult.name}}</h2>
        <h5 style="margin-top: 10px">年份：{{CarResult.year}}</h5>
        <h5 style="margin-top: 10px">近似度：{{CarResult.score}}</h5>
        <h5 style="margin-top: 10px">百度百科：<a :href="CarResultInfoBaikeUrl" target="_blank">{{CarResult.name}}</a> </h5>
        <h6 style="margin-top: 10px">车型描述：{{CarResultInfo.description}}</h6>
      </el-col>
    </el-row>
  </div>

</template>

<script>
import { Search } from '@element-plus/icons-vue'
import request from "@/utils/request";
import router from "@/router";
import { library } from "@fortawesome/fontawesome-svg-core";
import { fas} from "@fortawesome/free-solid-svg-icons";
import { fab } from '@fortawesome/free-brands-svg-icons';
import { far } from '@fortawesome/free-regular-svg-icons';
library.add(fas,fab,far);
export default {
  name: "RefitCulture",
  data(){
    return{
      path:this.$route.path,
      tableData:[],
      pageNum:1,
      pageSize: 100,
      search:'',
      car_img:require("../assets/img/car/car_ai/default_img.png"),
      CarResult:[],
      CarResultInfo:[],
      CarResultInfoBaikeUrl:'https://baike.baidu.com/item/',
    }
  },
  created() {
    this.load()
  },
  methods:{
    load(){
      // request.get("/culture",{
      //   params:{
      //     pageNum:this.pageNum,
      //     pageSize:this.pageSize,
      //     search:this.search
      //   }
      // }).then(res => {
      //   console.log(res);
      //   this.tableData = res.data.records
      //   this.total = res.data.total
      // })
    },
    handleAvatarSuccess(res) {

      this.car_img = res.data
      this.$message.success("上传成功")
      // console.log(json)
      // this.update()
      // this.imageUrl = `/files/download?name=${res.data}`

    },
    CarAI(){
      request.post("/carai",{

        }).then(res => {
          var json =  JSON.parse(res.data);//转换为json对象
          console.log(json);
          this.CarResult = json.result[0]
          this.CarResultInfo = json.result[0].baike_info
          this.CarResultInfoBaikeUrl += json.result[0].name
        })

    },



  },
  

  
}
</script>

<style scoped>
.title{
  text-align: center;
  margin:30px 0;
}
.el-table .warning-row {
  --el-table-tr-bg-color: var(--el-color-warning-light-9);
}
.el-table .success-row {
  --el-table-tr-bg-color: var(--el-color-success-light-9);
}
.show-kind{
  display: inline-block;
  margin:25px 40px;
  color:black;
  font-weight: 500;
  font-family: STHeiti  ;
}

.show-info{
  color:#4e5969;
  margin:20px 10px;
  font-family: STKaiti;

  font-size: large;
}
</style>