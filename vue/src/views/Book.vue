<template>
  <div class="home" style="padding:10px">
    <!-- 功能区域 -->
    <div style="margin:10px 0">
      <el-button type="primary" @click="add">新增</el-button>
      <el-button type="success" @click="">导入</el-button>
      <el-button type="danger" @click="">导出</el-button>

    </div>

    <!-- 搜索区域 -->
    <div style="margin:10px 0">
      <el-input v-model="search" placeholder="请输入关键字" style="width:20%" clearable />
      <el-button type="primary" style="margin:0 10px" @click="load">搜索</el-button>
    </div>

    <el-table :data="tableData" border stripe style="width: 99%">
      <el-table-column prop="id" label="ID" width="80" sortable />
      <el-table-column prop="name" label="书名" width="230"/>
      <el-table-column prop="author" label="作者" width="230"/>
      <el-table-column prop="price" label="价格" width="150"/>
      <el-table-column prop="createTime" label="出版日期" width="280"/>
      <el-table-column label="Operations" >
        <template #default="scope">
          <el-button @click="handleEdit(scope.row)"
          >编辑</el-button
          >
          <!-- <el-button
            size="small"
            type="danger"
            @click="handleDelete(scope.$index, scope.row)"
            >删除</el-button> -->
          <el-popconfirm title="确认删除?" type="danger" @confirm="handleDelete(scope.row.id)">
            <template #reference>
              <el-button type="danger">删除</el-button>
            </template>
          </el-popconfirm>
        </template>
      </el-table-column>
    </el-table>

    <div style="margin:10px 0">
      <el-pagination
          v-model:currentPage="currentPage4"
          v-model:page-size="pageSize4"
          :page-sizes="[10, 20, 30, 40]"
          :small="small"
          :disabled="disabled"
          :background="background"
          layout="total, sizes, prev, pager, next, jumper"
          :total="total"
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
      />


      <el-dialog v-model="dialogVisible"
                 title="新增数据"
                 width="30%"
      >
        <el-form :model="form" label-width="120px">
          <el-form-item label="书名">
            <el-input v-model="form.name" style="width:80%"></el-input>
          </el-form-item>
          <el-form-item label="作者">
            <el-input v-model="form.author" style="width:80%"></el-input>
          </el-form-item>
          <el-form-item label="价格">
            <el-input v-model="form.price" style="width:80%"></el-input>
          </el-form-item>
          <el-form-item label="出版日期">
            <el-date-picker v-model="form.createTime" value-format="YYYY-MM-DD" type="date" style="width:80%"/>
          </el-form-item>
        </el-form>
        <template #footer>
          <span class="dialog-footer">
            <el-button @click="dialogVisible = false">取消</el-button>
            <el-button type="primary" @click="save"
            >确认</el-button
            >
          </span>
        </template>
      </el-dialog>

    </div>
  </div>
</template>

<script>
import { assertExpressionStatement } from '@babel/types'
import  request  from '@/utils/request'

import { ref } from 'vue'

const value1 = ref('')

export default {
  name: 'Book',
  components: {

  },
  data() {
    return {
      form:{},
      dialogVisible: false,
      search:'',
      currentPage4:1,
      pageSize4:10,
      total:0,
      tableData:[

      ]
    }
  },
  created() {
    this.load()
  },
  methods: {
    load(){
      request.get("/book",{
        params:{
          pageNum:this.currentPage4,
          pageSize:this.pageSize4,
          search:this.search
        }
      }).then(res => {
        console.log(res);
        this.tableData = res.data.records
        this.total = res.data.total
      })
    },
    add(){
      this.dialogVisible = true
      this.form = {}
    },
    save(){
      if(this.form.id){
        request.put("/book",this.form).then(res => {
          console.log(res)
          if(res.code == 0 ){
            this.$message.success("更新成功")
          }else{
            this.$message.error(res.msg)
          }
          this.load()
          this.dialogVisible = false
        })
      } else{
        request.post("/book",this.form).then(res => {
          console.log(res)
          if(res.code == 0 ){
            this.$message.success("新增成功")
          }else{
            this.$message.error(res.msg)
          }
          this.load()
          this.dialogVisible = false
        })
      }
    },
    handleEdit(row){
      this.form = JSON.parse(JSON.stringify(row))
      this.dialogVisible = true

    },
    handleDelete(id){
      console.log(id);
      request.delete("/book/" + id).then(res => {
        if(res.code == 0 ){
          this.$message.success("删除成功")
        }else{
          this.$message.error(res.msg)
        }
        this.load()
      })

    },
    handleSizeChange(pageSize){     //改变每页数量触发
      this.pageSize4 = pageSize
      this.load()
    },
    handleCurrentChange(pageNum){  //改变当前页码触发
      this.currentPage4 = pageNum
      this.load()
    },
    pageSize4(){

    }
  },
}
</script>
