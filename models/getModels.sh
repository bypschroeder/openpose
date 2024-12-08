# ------------------------- BODY, FOOT, FACE, AND HAND MODELS -------------------------
# Downloading body pose (COCO and MPI), face and hand models
POSE_FOLDER="pose/"
FACE_FOLDER="face/"
HAND_FOLDER="hand/"

# ------------------------- POSE (BODY+FOOT) MODELS -------------------------
# Body (BODY_25)
BODY_25_FOLDER=${POSE_FOLDER}"body_25/"
BODY_25_MODEL="https://www.dropbox.com/scl/fi/pfl1nonefgd2r3w42e2ij/pose_iter_584000.caffemodel?rlkey=hnj53tdg47d4fzgm9fz967tnb&st=n58uhf5p&dl=1"
wget -c ${OPENPOSE_URL}${BODY_25_MODEL} -P ${BODY_25_FOLDER}

# Body (COCO)
COCO_FOLDER=${POSE_FOLDER}"coco/"
COCO_MODEL="https://www.dropbox.com/scl/fi/h0hd4pmeje4k1640a5kqy/pose_iter_440000.caffemodel?rlkey=5d2maapl1e01wv9z31e8p6a8n&st=r5x6u0hb&dl=1"
wget -c ${OPENPOSE_URL}${COCO_MODEL} -P ${COCO_FOLDER}
# Alternative: it will not check whether file was fully downloaded
# if [ ! -f $COCO_MODEL ]; then
#     wget ${OPENPOSE_URL}$COCO_MODEL -P $COCO_FOLDER
# fi

# Body (MPI)
MPI_FOLDER=${POSE_FOLDER}"mpi/"
MPI_MODEL="https://www.dropbox.com/scl/fi/zvhra005syer8tav139xe/pose_iter_160000.caffemodel?rlkey=x3hwlp1gdesw0mvo751x4wl20&st=h7g7m49u&dl=1"
wget -c ${OPENPOSE_URL}${MPI_MODEL} -P ${MPI_FOLDER}

# "------------------------- FACE MODELS -------------------------"
# Face
FACE_MODEL="https://www.dropbox.com/scl/fi/0i0z2fq8o3d75irw8sube/pose_iter_116000.caffemodel?rlkey=mux887c03dr4xtdjwxg0a5n5i&st=7bmesvss&dl=1"
wget -c ${OPENPOSE_URL}${FACE_MODEL} -P ${FACE_FOLDER}

# "------------------------- HAND MODELS -------------------------"
# Hand
HAND_MODEL="https://www.dropbox.com/scl/fi/the6q2tj5m215cxq85mko/pose_iter_102000.caffemodel?rlkey=hiasv5euzdg1gzyda5h7fcwvi&st=18c8uo6j&dl=1"
wget -c ${OPENPOSE_URL}${HAND_MODEL} -P ${HAND_FOLDER}
