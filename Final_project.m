function [] = Final_project(Startoveragain,Doresize)
close all
addpath('layers')
addpath('segment')
sz1=74;
sz2=34;
loss_thresh=0.15;
if Startoveragain
    model=proj_train_original(sz1,sz2,loss_thresh);
else
    load('proj_model.mat')
end
img_origin=imread('img2.jpg');
 if Doresize
     for k=3:9
         figure
         windows=resndet(img_origin,model,sz1,sz2,k);
              end
 else
     figure
windows=getped(img_origin,model,sz1,sz2);
 end
end