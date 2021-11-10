FROM openjdk:11
#create the user, homefolder and set permissions
RUN useradd -u 1965 koko -d /home/koko; mkdir /home/koko;chown -R koko /home/koko; chgrp -R koko /home/koko
# Change to non-root privilege
USER koko
#push the artifact into the continer 
COPY my-app-1.0.0.jar /home/koko
#execute the app.
RUN java -cp /home/koko/my-app-1.0.0.jar com.mycompany.app.App
