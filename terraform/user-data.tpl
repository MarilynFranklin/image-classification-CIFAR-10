#!/bin/bash

set -x
set -v

su - udacity -c "$( cat <<'EOF'
  git clone ${git_repo}
  cd image-classification-CIFAR-10
  source /home/carnd/anaconda3/bin/activate dl
  jupyter notebook dlnd_image_classification.ipynb &
EOF
)"
