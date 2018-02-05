FROM gcr.io/distroless/java

ADD target/libs/ app/libs

ADD target/classes/20m.2 /app/res/20m.2
ADD target/classes/world2 /app/res/world2
ADD target/classes/com /app/classes/com

ENTRYPOINT ["java", "-cp", "app/classes/:app/libs/*:app/res/", "com.test.HelloWorld"]