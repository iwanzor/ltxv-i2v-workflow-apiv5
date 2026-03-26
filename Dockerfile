FROM runpod/worker-comfyui:5.8.5-base

RUN cd /comfyui/custom_nodes && git clone https://github.com/Lightricks/ComfyUI-LTXVideo.git && cd ComfyUI-LTXVideo && pip install -r requirements.txt

RUN cd /comfyui/custom_nodes && git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git && cd ComfyUI-VideoHelperSuite && pip install -r requirements.txt

RUN comfy model download --url https://huggingface.co/Lightricks/LTX-Video/resolve/main/ltx-video-2b-v0.9.5.safetensors --relative-path models/checkpoints --filename ltx-video-2b-v0.9.5.safetensors