/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Timothy
 * Created: Apr 8, 2018
 */

USE papers;

/* for table Relateds */
INSERT INTO Relateds(related_name, link_address) VALUES ('Deep learning(2015)', 'https://www.cs.toronto.edu/~hinton/absps/NatureDeepReview.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Deep learning in neural networks: An overview(2015)', 'https://arxiv.org/pdf/1404.7828.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Representation learning: A review and new perspectives(2013)', 'https://arxiv.org/pdf/1206.5538.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('MatConvNet: Convolutional neural networks for matlab(2015)', 'https://arxiv.org/pdf/1412.4564.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Caffe: Convolutional architecture for fast feature embedding(2014)', 'https://arxiv.org/pdf/1408.5093.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('TensorFlow: Large-scale machine learning on heterogeneous distributed systems(2016)', 'https://arxiv.org/pdf/1603.04467.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Theano: A Python framework for fast computation of mathematical expressions(2016)', 'https://arxiv.org/pdf/1605.02688.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Torch7: A matlab-like environment for machine learning(2011)', 'https://ronan.collobert.com/pub/matos/2011_torch7_nipsw.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Keras: Deep Learning library for Theano and TensorFlow', 'https://keras.io/#keras-deep-learning-library-for-theano-and-tensorflow');
INSERT INTO Relateds(related_name, link_address) VALUES ('Imagenet large scale visual recognition challenge(2015)', 'https://arxiv.org/pdf/1409.0575.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Large-Scale Video Classification with Convolutional Neural Networks(2014)', 'https://www.cv-foundation.org/openaccess/content_cvpr_2014/papers/Karpathy_Large-scale_Video_Classification_2014_CVPR_paper.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Microsoft COCO: Common Objects in Context(2015)', 'https://arxiv.org/pdf/1405.0312.pdf');
INSERT INTO Relateds(related_name, link_address) VALUES ('Learning deep features for scene recognition using places database(2014)', 'http://places.csail.mit.edu/places_NIPS14.pdf');

/* for table Types */
INSERT INTO Types(type_name) VALUES ('Convolutional Neural Networks');
INSERT INTO Types(type_name) VALUES ('Spatial Transformer Network');
INSERT INTO Types(type_name) VALUES ('Application Examples');
INSERT INTO Types(type_name) VALUES ('GAN');
INSERT INTO Types(type_name) VALUES ('RNN & LSTM');
INSERT INTO Types(type_name) VALUES ('Understanding CNN (Convolutional Neural Networks)');


/* for table Papers */
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('AlexNet(2012)', 'https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Network in network(2013)', 'https://arxiv.org/pdf/1312.4400.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('ZF Net(2013)', 'https://arxiv.org/pdf/1311.2901v3.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('VGG Net(2014)', 'https://arxiv.org/pdf/1409.1556v6.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('GoogLeNet(2015)', 'https://www.cv-foundation.org/openaccess/content_cvpr_2015/papers/Szegedy_Going_Deeper_With_2015_CVPR_paper.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Microsoft ResNet(2015)', 'https://arxiv.org/pdf/1512.03385v1.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Densely Connected Convolutional Networks(2017)', 'http://openaccess.thecvf.com/content_cvpr_2017/papers/Huang_Densely_Connected_Convolutional_CVPR_2017_paper.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('R-CNN(2013)', 'https://arxiv.org/pdf/1311.2524v5.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Fast R-CNN(2015)', 'https://arxiv.org/pdf/1504.08083.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Faster R-CNN(2015)', 'https://arxiv.org/pdf/1506.01497v3.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Mask R-CNN(2017)', 'https://arxiv.org/pdf/1703.06870.pdf', 1);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Spatial Transformer Networks(2015)', 'https://arxiv.org/pdf/1506.02025.pdf', 2);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Simultaneous Detection and Segmentation(2014)', 'https://arxiv.org/pdf/1407.1808.pdf', 3);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('OverFeat: Integrated recognition, localization and detection using convolutional networks(2013)', 'https://arxiv.org/pdf/1312.6229.pdf', 3);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('You only look once: Unified, real-time object detection(2016)', 'https://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Redmon_You_Only_Look_CVPR_2016_paper.pdf', 3);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('CNN for visual tracking(2016)', 'https://www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Nam_Learning_Multi-Domain_Convolutional_CVPR_2016_paper.pdf', 3);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('CNN+RNN to generating image description(2014)', 'https://arxiv.org/pdf/1412.2306v2.pdf', 3);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Learning Spatiotemporal Features with 3D Convolutional Networks(2015)', 'http://vlg.cs.dartmouth.edu/c3d/c3d_video.pdf', 3);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Generative adversarial nets(2014)', 'http://datascienceassn.org/sites/default/files/Generative%20Adversarial%20Nets.pdf', 4);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Image to image translation(CVPR2017)', 'https://arxiv.org/pdf/1611.07004v1.pdf', 4);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Image to image translation(ICCV2017)', 'https://arxiv.org/pdf/1703.10593.pdf', 4);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Learning from Simulated and Unsupervised Images through Adversarial Training(2017)', 'https://arxiv.org/pdf/1612.07828.pdf', 4);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Super-resolution(2017)', 'https://arxiv.org/pdf/1609.04802.pdf', 4);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Text to image(2017)', 'https://arxiv.org/pdf/1612.03242v1.pdf', 4);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Hierarchical Recurrent Neural Network for Skeleton Based Action Recognition(CVPR2015)', 'https://www.cv-foundation.org/openaccess/content_cvpr_2015/papers/Du_Hierarchical_Recurrent_Neural_2015_CVPR_paper.pdf', 5);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Long-term Recurrent Convolutional Networks for Visual Recognition and Description(2015)', 'https://www.cv-foundation.org/openaccess/content_cvpr_2015/papers/Donahue_Long-Term_Recurrent_Convolutional_2015_CVPR_paper.pdf', 5);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Show, attend and tell: Neural image caption generation with visual attention(2015)', 'https://arxiv.org/pdf/1502.03044.pdf', 5);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Pixel recurrent neural networks(2016)', 'https://arxiv.org/pdf/1601.06759v2.pdf', 5);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Multi-scale Orderless Pooling of Deep Convolutional Activation Features(2014)', 'http://slazebni.cs.illinois.edu/publications/yunchao_eccv14_mopcnn.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('ReLU(Rectified Linear Units)', 'http://www.cs.toronto.edu/~fritz/absps/reluICML.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Dropout: a simple way to prevent neural networks from overfitting(2014)', 'http://jmlr.org/papers/volume15/srivastava14a/srivastava14a.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('CNN features off-the-Shelf: An astounding baseline for recognition(2014)', 'https://www.cv-foundation.org/openaccess/content_cvpr_workshops_2014/W15/papers/Razavian_CNN_Features_Off-the-Shelf_2014_CVPR_paper.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Learning and transferring mid-Level image representations using convolutional neural networks(2014)', 'https://www.cv-foundation.org/openaccess/content_cvpr_2014/papers/Oquab_Learning_and_Transferring_2014_CVPR_paper.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('How transferable are features in deep neural networks(2014)', 'http://papers.nips.cc/paper/5347-how-transferable-are-features-in-deep-neural-networks.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Deep neural networks are easily fooled: High confidence predictions for unrecognizable images(2015)', 'https://arxiv.org/pdf/1412.1897.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Adam: A method for stochastic optimization(2014)', 'https://arxiv.org/pdf/1412.6980.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Batch Normalization: Accelerating Deep Network Training by Reducing Internal Covariate Shift(2015)', 'http://proceedings.mlr.press/v37/ioffe15.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Improving neural networks by preventing co-adaptation of feature detectors(2012)', 'https://arxiv.org/pdf/1207.0580.pdf', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Random search for hyper-parameter optimization(2012)', 'http://www.jmlr.org/papers/volume13/bergstra12a/bergstra12a', 6);
INSERT INTO Papers(paper_name, link_address, Type_id) VALUES ('Focal Loss For Dense Object Detection(2017)', 'http://openaccess.thecvf.com/content_ICCV_2017/papers/Lin_Focal_Loss_for_ICCV_2017_paper.pdf', 6);
