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
          <div>
            <h1 style="display:inline-block;margin:10px 0" >汽车查询</h1>
            <el-input v-model="name" placeholder="请输入关键字"  clearable />
          </div>
          <el-table :data="tableData" style="width: 100%;margin-top:20px" >
            <el-table-column  item="logo" label="车标" width="284">
              <el-image
                  style="width:50px;height:50px"
                  :src=logos_img
                  fit="cover"
              ></el-image>
            </el-table-column>
            <el-table-column prop="brand1" label="中文名" width="284" sortable />
            <el-table-column prop="brand2" label="英文名" width="284"  />
            <el-table-column  width="284"  >
              <el-button size="large" @click="handleEdit(scope.$index, scope.row)">详情页面</el-button>
            </el-table-column>>
          </el-table>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
import { Search } from '@element-plus/icons-vue'
export default {
  name: "CarSearch",
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
      tableData:[
        {
          logos: require("../assets/img/car/car_logo/audi.png"),
          brand1: '五菱宏光',
          brand2: 'wuling',

        },
        {
          logos: require("../assets/img/car/car_logo/audi.png"),
          brand1: '大众',
          brand2: 'wuling',
        },
        {
          logos: require("../assets/img/car/car_logo/audi.png"),
          brand1: '奔驰',
          brand2: 'wuling',
        },
      ],
      logos_img:require("../assets/img/car/car_logo/audi.png"),
    }
  },
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




