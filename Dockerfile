FROM partlab/ubuntu-mongodb
RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y gcc-4.9 g++-4.9
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 90
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 90
RUN update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-4.9 90
RUN curl https://gist.githubusercontent.com/NotFounds/345d98311600e72f7c07ff73ef2cca77/raw/10dbb2d133fb3e18dd3c15f9f484f77475a5ee87/HQ9F+.cpp > hq9fplus.cpp
RUN g++ -std=c++0x hq9fplus.cpp -o HQ9F+
RUN mv HQ9F+ /bin/HQ9F+
RUN rm hq9fplus.cpp
RUN apt-get install -y ruby
RUN apt-get install -y python
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs npm
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10
RUN apt-get install -y build-essential
RUN apt-get install -y clang
RUN apt-get install -y mono-devel mono-mcs
RUN apt-get install -y golang
RUN apt-get install -y bf
RUN apt-get install -y erlang
RUN npm install -g coffee-script
RUN echo "PATH=~/node_modules/.bin/:$PATH" >> ~/.bashrc
RUN apt-get install -y time
RUN apt-get install -y binutils
