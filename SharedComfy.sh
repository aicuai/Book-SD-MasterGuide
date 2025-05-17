# Download images
wget -c https://github.com/aicuai/Book-SD-MasterGuide/blob/main/images/landscape_01.jpeg?raw=true -O ./input/landscape_01.jpeg
wget -c https://github.com/aicuai/Book-SD-MasterGuide/blob/main/images/landscape_02.jpg?raw=true -O ./input/landscape_02.jpg
wget -c https://github.com/aicuai/Book-SD-MasterGuide/blob/main/images/fire_castle.jpeg?raw=true -O ./input/fire_castle.jpeg
wget -c https://github.com/aicuai/Book-SD-MasterGuide/blob/main/images/girl_01.jpg?raw=true -O ./input/girl_01.jpg
wget -c https://github.com/aicuai/Book-SD-MasterGuide/blob/main/images/girl_02.jpg?raw=true -O ./input/girl_02.jpeg
wget -c https://github.com/aicuai/Book-SD-MasterGuide/raw/refs/heads/main/videos/768x1280@24fps.mp4 -P ./input/
wget -c https://github.com/aicuai/Book-SD-MasterGuide/raw/refs/heads/main/videos/720p_girl_selfie_01.mp4 -P ./input/

# Download workflows
wget -c https://raw.githubusercontent.com/aicuai/Book-SD-MasterGuide/refs/heads/main/workflows/workflow_animatediff_create_background.json -P ./user/default/workflows/
wget -c https://raw.githubusercontent.com/aicuai/Book-SD-MasterGuide/refs/heads/main/workflows/workflow_animatediff_i2v.json -P ./user/default/workflows/
wget -c https://raw.githubusercontent.com/aicuai/Book-SD-MasterGuide/refs/heads/main/workflows/workflow_animatediff_v2v_with_lora.json -P ./user/default/workflows/
wget -c https://raw.githubusercontent.com/aicuai/Book-SD-MasterGuide/refs/heads/main/workflows/workflow_animatediff_t2v_with_ipadapter.json -P ./user/default/workflows/
wget -c https://raw.githubusercontent.com/aicuai/Book-SD-MasterGuide/refs/heads/main/workflows/workflow_animatediff_v2v.json -P ./user/default/workflows/
wget -c https://raw.githubusercontent.com/aicuai/Book-SD-MasterGuide/refs/heads/main/workflows/workflow_animatediff_t2v.json -P ./user/default/workflows/

# Checkpoints: AAM XL (Anime Mix)
#wget -c "https://civitai.com/api/download/models/330157?type=Model&format=SafeTensor&size=full&fp=fp16" -O ./models/checkpoints/aamXLAnimeMix_v10HalfturboEulera.safetensors
# LoRA: GlowNeon XL
#wget -c "https://civitai.com/api/download/models/348189?type=Model&format=SafeTensor" -O ./models/loras/glowneon_xl_v1.safetensors
# CLIP Vision
#wget -c https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors -O ./models/clip_vision/CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors
# ControlNet: ControlNet Union SDXL 1.0 Promax
#wget -c https://huggingface.co/xinsir/controlnet-union-sdxl-1.0/resolve/main/diffusion_pytorch_model_promax.safetensors -O ./models/controlnet/controlnet-union-sdxl-1.0-promax.safetensors
# ControlNet: AnyTest v4
#wget -c https://huggingface.co/2vXpSwA7/iroiro-lora/resolve/main/test_controlnet2/CN-anytest_v4-marged.safetensors -P ./models/controlnet/

# IP-Adapter
wget -c https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus_sdxl_vit-h.safetensors -P ./models/ipadapter

# AnimateDiff: SDXL Motion Module
wget -c https://huggingface.co/guoyww/animatediff/resolve/main/mm_sdxl_v10_beta.ckpt -P ./models/animatediff_models

# AnimateDiff: HotshotXL
wget -c https://huggingface.co/hotshotco/Hotshot-XL/resolve/main/hsxl_temporal_layers.f16.safetensors -P ./models/animatediff_models

