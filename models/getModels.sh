# ------------------------- BODY, FOOT, FACE, AND HAND MODELS -------------------------
# Downloading body pose (COCO and MPI), face and hand models
OPENPOSE_URL="http://vcl.snu.ac.kr/OpenPose/models/"
POSE_FOLDER="pose/"
FACE_FOLDER="face/"
HAND_FOLDER="hand/"

# ------------------------- POSE (BODY+FOOT) MODELS -------------------------
# Body (BODY_25)
BODY_25_FOLDER=${POSE_FOLDER}"body_25/"
BODY_25_MODEL="https://storage.googleapis.com/kaggle-data-sets/432957/822363/compressed/pose_iter_584000.caffemodel.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20241208%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20241208T211812Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=5e686676550913936ac0b98468342422eeaf6ca57a27397b1a1c49092c36532736dd30bd1a64d891c07686c0f2b541a9b7d4b0204295bb705163b0a4d21e6626778f6a89477a8a6737ffdf880a8b6ff14b90904d75434c6fc2fedd41657cb6bb4a089133e214078f53c1c2bf1dce305b1229548daf0a37be8a44794bf6d1107c55bd9d437b8351d1c574f58b609fd253a3467247a331f43ce1c6b2f33f281c85dc33c2c5f4e74e744a6dd652dd9d50d330894a1bb686615188f45d1d52c5368b6ffc4430e8aec92c170e71d41952ecb0094b8fd5a4b5e419cf163c6f683c172806ffb794f2af960acbd0acf9a3b7fe991ac50351e07f301d81d7052e5d95f2ae"
(cd ${BODY_25_FOLDER} && curl -L -O ${BODY_25_MODEL})

# Body (COCO)
COCO_FOLDER=${POSE_FOLDER}"coco/"
COCO_MODEL="https://storage.googleapis.com/kaggle-data-sets/432957/822363/compressed/pose_iter_440000.caffemodel.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20241208%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20241208T212050Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=59cb6dfff2fcff6883fb96c88bce5ebce143f36914c61765408881228251d0b4049ac395a3b7ee6ce166206c19158bbe0b444d4dabde121ab303d8ede7e3d3acf3769d7526ceab4d59a2e7ba38aed9cfd0f22bd43cbb97da2b6024126efe9370dfdd34db29743bd190a1116f91e87cceeac6610e7d9c68f9ce82bf5c9b23b5dc9ae290a9b1fcb5f068c2f0cb08938daca00c5cac265ef39e619b9dcd80e02ce49d4a2255b88c82a67a1db56ff5a962bde970b419b370695b4cafe731195a95b9dd08d7467364e9f69763967ee1c5115b8c68abc63fff7531eea17da26549c05dc267fe11943e852a748e971181e0e5640e846184cc380e81d7632c97de30318f"
(cd ${COCO_FOLDER} && curl -L -O ${COCO_MODEL})
# Alternative: it will not check whether file was fully downloaded
# if [ ! -f $COCO_MODEL ]; then
#     wget ${OPENPOSE_URL}$COCO_MODEL -P $COCO_FOLDER
# fi

# Body (MPI)
MPI_FOLDER=${POSE_FOLDER}"mpi/"
MPI_MODEL="https://storage.googleapis.com/kaggle-data-sets/432957/822363/compressed/pose_iter_160000.caffemodel.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20241208%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20241208T212131Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=513f028185caaee5d50f0f5f9d86d85e12a4fd2d64e82ef1fd9261a398c2fb395ccac300d5e0269e28a084c216268fca0ad1955f4977cb9f5a57e9ec7af274ec4cb4c3b99373322aeeed6a5528eac1f0accbb95977f9f4934631e7e40e721fa264c1773a078d6bef4eb2f14668fe06e816091eed814d909dfd67394fa16c5612e746d2e2d143d4a06e8e8f273166ed5c53569b2b3bf392f1a6689895bcab3a5d96d4889e0731c5aa49ccf25d6d2bb14faef20a227440c9963378f2b70938eafd80aad3540e523039137ef371e7512d81e3379a173a92160cacced70e1961c860dbfcb4316ac20f6e4a026e2f96280ef8673b81d0362ed1e04c72b89e1fe7d8ef"
(cd ${MPI_FOLDER} && curl -L -O ${MPI_MODEL})

# "------------------------- FACE MODELS -------------------------"
# Face
FACE_MODEL="https://storage.googleapis.com/kaggle-data-sets/432957/822363/compressed/pose_iter_116000.caffemodel.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20241208%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20241208T212150Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=4ae1163c65cda54204a0c89ff68dac8c3d6e81cd032bd5e28b85f499dcf64b459b19b831c33da3cb1a74a3de8d12ef8a96552058b75ab6f6cb9f6c08b478cc1ea9018b19e6f47bb32ffd9b53f62fe7cc871fbef8ef406627e7a38aa3c9337147b30227c23059bb49d45d6d89f9c19f3b9b68ee484351db623515b4963de6f3ce03080ea675852dc4c4a50bae7fef39dc2e07cb0b45d3e85309cd83d6de02e5503e880f0ae878bdcd27dc5262f0608b2de291bceb518bc9e636de9f951e2a25577ef0367e339d4d1e33bc8e8d809bcf1ea0ee00eed9738a8ae0b4fb6f67fc41cb6a6abc5606a17c84d2bdabb81cf503dc541420f8bdb8875ab7f00a5985ae1e85"
(cd ${FACE_FOLDER} && curl -L -O ${FACE_MODEL})

# "------------------------- HAND MODELS -------------------------"
# Hand
HAND_MODEL="https://storage.googleapis.com/kaggle-data-sets/432957/822363/compressed/pose_iter_102000.caffemodel.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20241208%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20241208T212206Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=85bbbaef69337c544b7c9feb1009ad24f23a438ecebc5f876f2664414162c63147076c9ae113bc959290c70e73942ead4c30b4c620936ce9d8a25c04a9ac84f36251ae3dfbbb5ebd22686d2227a7fae2be9b3d7d6449b2825d6d8a8511b777e72976a078f1879237d6f60ced526003cf1c7bfc2df8a2b82cde8b0daad7e5de40cf86df6d95c4ec5f4bfdb0e63a9da8fb1a8d4d6ab705ae2cfa2a7910acb128e6d0cc1be1b1358f04404d6148e2b1976b7e318646134dbd10324afe33f48a770965fccb7f50a0c6221652b89413817d4de0d9a34e5fc07f8109d4ea6d55a788b84b9ac3a1ce9b8001b0df9118b7545b64aba32db73b9ab2644af0278c901abd82"
(cd ${HAND_FOLDER} && curl -L -O ${HAND_MODEL})
