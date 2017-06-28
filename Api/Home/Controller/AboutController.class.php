<?php
namespace Home\Controller;
use Think\Controller;
class AboutController extends PublicController{

	public function index(){
		$one = D('About')->where("`id`=1")->find();
		$this->ajaxReturn($one);
    }

    public function anli(){
    	$list = D('Case')->where("`type`=1")->select();
    	$this->ajaxReturn($list);
    }
    public function caseInfo(){
    	$id = I("get.id");
    	$data = D('Case')->where("`id`=$id")->find();
    	$this->ajaxReturn($data);
    }

}