arm_app:
	chmod +x build-arm-app.sh
	./build-arm-app.sh

clean:
	rm -rf bin/*
	rm -rf build/*