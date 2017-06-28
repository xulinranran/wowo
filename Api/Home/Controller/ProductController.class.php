<?php
namespace Home\Controller;
use Think\Controller;
class ProductController extends PublicController{


    public function index(){

        $pro= D('Product')->select();

        $this->assign('pro',$pro);
        $this->view();

    }

    public function add(){
        $this->view();

    }

  
    public function addProduct(){
        $_POST['iamge'] = $this->upload('iamge');
        $data = I('post.');
        // print_r($data);die;

        if(!empty($data['name'])){
            $row = D('Product')->add($data);

            if($row>0){
                $this->success('添加成功',U('add'),1);
            }else{
                $this->error('添加失败','add',1);
                }
        }

    }

    public function ajax(){
        $wsid = I('get.wsid');
        $data = D('Product')->where("`wsid`=$wsid")->select();
        $this->ajaxReturn($data);
    }
    public function productinfo(){
        $id = I('get.id');
        $one = D('Product')->where("`id`=$id")->find();
        $this->ajaxReturn($one);
    }
    public function banner(){
        $type = I('get.type');
        $one = D('Banner')->where("`type`=$type")->select();
        $about = D('About')->where("`id`=1")->find();
        $old = D('Use')->select();
        $arr = array();
        $i=0;
        foreach ($one as $val) {
            $arr['banner'][$i]=$val;
            $arr['company']['title']=$about['title'];
            $arr['company']['intro'] = $about['content'];
            $i++;
        }  
        foreach ($old as $v) {
            $arr['newslist'][$i]=$v;
            $i++; 
        }
        $this->ajaxReturn($arr);
    }

  




}