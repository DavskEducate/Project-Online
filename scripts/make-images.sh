#!/usr/bin/env bash

cp assets/images/gdti/*_s??.jpg website/Huny-B.info/static/images/gdti/
vipsthumbnail assets/images/gdti/*.jpg -s x32 -o ./../../../website/Huny-B.info/static/images/x32/%s.png
vipsthumbnail assets/images/gdti/*.jpg -s x64 -o ./../../../website/Huny-B.info/static/images/x64/%s.png
vipsthumbnail assets/images/gdti/*.jpg -s x300 -o ./../../../website/Huny-B.info/static/images/x300/%s.jpg[Q=75]
vipsthumbnail assets/images/gdti/*.jpg -s x600 -o ./../../../website/Huny-B.info/static/images/x600/%s.jpg[Q=75]
vipsthumbnail assets/images/gdti/*.jpg -s x1200 -o ./../../../website/Huny-B.info/static/images/x1200/%s.jpg[Q=75]
