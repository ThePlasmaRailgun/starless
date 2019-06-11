#./tracer.py -j10 -o ./scenes/default_highres.scene
#mv ./tests/out.png ./finished/rings/8k_blackhole.png
#convert ./finished/rings/8k_blackhole.png -resize 3840x2160 ./finished/rings/4k_blackhole.png


#./tracer.py -j10 -o ./scenes/default_ultrawide_highres.scene
#mv ./tests/out.png ./finished/rings/10k_blackhole_uw.png
#convert ./finished/rings/10k_blackhole_uw.png -resize 3440x1440^ -gravity center -extent 3440x1440 ./finished/rings/3440x1440_blackhole.png

#./tracer.py -j10 -o ./scenes/stardistord_highres.scene
#mv ./tests/out.png ./finished/simple_distortion/8k_simple_distortion.png
#convert ./finished/simple_distortion/8k_simple_distortion.png -resize 3840x2160 ./finished/simple_distortion/4k_simple_distortion.png

#./tracer.py -j10 -o ./scenes/stardistord_ultrawide_highres.scene
#mv ./tests/out.png ./finished/simple_distortion/10k_simple_distortion_uw.png
#convert ./finished/simple_distortion/10k_simple_distortion_uw.png -resize 3440x1440^ -gravity center -extent 3440x1440 ./finished/simple_distortion/3440x1440_simple_distortion.png

cd ./finished/rings/
mogrify -format jpg *.png
cd ../simple_distortion/
mogrify -format jpg *.png
cd ../..

echo "Finished!"