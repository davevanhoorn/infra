#! /bin/bash

pip install omegaconf einops pytorch-lightning==1.6.5 test-tube transformers kornia -e git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers --exists-action b -e git+https://github.com/openai/CLIP.git@main#egg=clip --exists-action b setuptools==59.5.0 pillow==9.0.1 torchmetrics==0.6.0 -e . protobuf==3.20.1 gdown -qq diffusers["training"]==0.3.0 transformers ftfy -qq "ipywidgets>=7,<8" ipywidgets==7.7.1 captionizer==1.0.1
gdown https://drive.google.com/uc?id=1xcpSr6DjX856jBsR_T-jytAUgXt77scj
mkdir training_images
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/1.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/2.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/3.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/4.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/5.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/6.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/7.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/8.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/9.jpg
wget -nd -r -P ./training_images -A jpg https://dave.nl/tmp/10.jpg
rm -rf training_images/.ipynb_checkpoints
gdown https://drive.google.com/uc?id=1xcpSr6DjX856jBsR_T-jytAUgXt77scj
python main.py --reg_data_root "regularization_images/person_ddim" --gpus 0, --class_word "person"
python scripts/stable_txt2img.py --prompt "firstNameLastName person as a masterpiece portrait painting by John Singer Sargent in the style of Rembrandt ultra-hd high quality portrait with gradients and diffuse glow"
python scripts/stable_txt2img.py --prompt "Highly detailed painting of a beautiful firstNameLastName person, dancing in the rain, intricate, high quality oil painting artstyle, in the style of anna dittmann, deviantart, figurative art, deviantart, ilya kuvshinov, lovecraftian, very detailed face, portrait"
python scripts/stable_txt2img.py --prompt "Photo realism, an 8k, deep focused illustration of firstNameLastName person, moonshine, this person is beautiful, with tarot colors in the background, in the style of wes anderson with lot of love and cuteness created at antiquity in 4k ultra high resolution and with dutch angle, with inspiring feeling"
python scripts/stable_txt2img.py --prompt "Realistic portrait painting illustration firstNameLastName person, 3d, 8k, realistic, Beatrice Huntington, deep shadows, glowing background, Geof Darrow, colorful"
python scripts/stable_txt2img.py --prompt "Black background colourful firstNameLastName in prostration wearing white clothes, 3d, 8k, realistic, glow effect"
python scripts/stable_txt2img.py --prompt "8k stock photo portrait of firstNameLastName person, blur effect, focus on eyes and genuine smile"
python scripts/stable_txt2img.py --prompt "8k person firstNameLastName with massive muscles, beautiful, sharp contrast, award winning photo, black and white"
python scripts/stable_txt2img.py --prompt "A black and white close-up photo of of a firstNameLastName person face with a big jawline. ultra dramatic lighting with side view"
python scripts/stable_txt2img.py --prompt "Award winning portrait shot photo of a firstNameLastName person wearing black hoodie with a hood on and completely black full face mask and glowing white eyes, on a black background"
python scripts/stable_txt2img.py --prompt "Close-up of beatiful firstNameLastName person's face, make-up, photoshoot, high contrast, focus, award-winning"