/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.145.132
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : 192.168.145.132:3306
 Source Schema         : kplcloud

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 20/05/2022 13:18:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for builds
-- ----------------------------
DROP TABLE IF EXISTS `builds`;
CREATE TABLE `builds`  (
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `build_env` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `build_id` bigint(20) DEFAULT NULL,
  `build_time` datetime(0) DEFAULT NULL,
  `builder_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `git_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `output` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`, `namespace`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of builds
-- ----------------------------
INSERT INTO `builds` VALUES ('git@github.com:jianggaishi/0412go-seckill.git', '', 1, '2022-04-12 21:56:43', 1, '2022-04-12 21:56:43', NULL, 'tag', 37, 'seckill-admin', 'default', 'Started by user admin\nRunning as SYSTEM\nBuilding in workspace /var/lib/jenkins/workspace/seckill-admin.default\nThe recommended git tool is: NONE\nusing credential jenkins\n > git rev-parse --resolve-git-dir /var/lib/jenkins/workspace/seckill-admin.default/.git # timeout=10\nFetching changes from the remote Git repository\n > git config remote.origin.url git@github.com:jianggaishi/0412go-seckill.git # timeout=10\nFetching upstream changes from git@github.com:jianggaishi/0412go-seckill.git\n > git --version # timeout=10\n > git --version # \'git version 2.17.1\'\nusing GIT_SSH to set credentials 0315test\n > git fetch --tags --progress -- git@github.com:jianggaishi/0412go-seckill.git +refs/heads/*:refs/remotes/origin/* # timeout=10\n > git rev-parse refs/remotes/origin/tags/V11.0^{commit} # timeout=10\n > git rev-parse tags/V11.0^{commit} # timeout=10\nChecking out Revision 764b17fbdf0b078d06879ad01a3184ac9b283323 (tags/V11.0)\n > git config core.sparsecheckout # timeout=10\n > git checkout -f 764b17fbdf0b078d06879ad01a3184ac9b283323 # timeout=10\nCommit message: \"不修改dockerfile 修改了consule等连接地址\"\nFirst time build. Skipping changelog.\n[seckill-admin.default] $ /bin/sh -xe /tmp/jenkins5744614169938765242.sh\n+ APPNAME=seckill-admin\n+ BUILD_PATH=\n+ NAMESPACE=default\n+ HUB_ADDR=192.168.145.132\n+ cd seckill-admin\n+ docker build -f Dockerfile --rm -t seckill-admin:V11.0 .\nSending build context to Docker daemon  873.5kB\r\r\nStep 1/7 : FROM golang:1.17\n ---> 276895edf967\nStep 2/7 : RUN mkdir /app\n ---> Using cache\n ---> 98db40d54773\nStep 3/7 : COPY . /app\n ---> 1ffe5a73ca65\nStep 4/7 : WORKDIR /app/sk-admin\n ---> Running in 6e6a4ce37f74\nRemoving intermediate container 6e6a4ce37f74\n ---> 73c1e960dd8f\nStep 5/7 : ENV GOPROXY https://goproxy.cn,direct\n ---> Running in 00ba13125ad7\nRemoving intermediate container 00ba13125ad7\n ---> 1f3060cdbd97\nStep 6/7 : RUN go build .\n ---> Running in 579fe50826f5\n[91mgo: downloading github.com/go-sql-driver/mysql v1.6.0\ngo: downloading github.com/go-kit/kit v0.12.0\ngo: downloading github.com/gohouse/gorose/v2 v2.1.12\n[0m[91mgo: downloading github.com/prometheus/client_golang v1.11.0\n[0m[91mgo: downloading github.com/samuel/go-zookeeper v0.0.0-20201211165307-7117e9ea2414\n[0m[91mgo: downloading go.etcd.io/etcd/client/v3 v3.5.1\n[0m[91mgo: downloading golang.org/x/time v0.0.0-20210723032227-1f47c861a9ac\n[0m[91mgo: downloading github.com/go-redis/redis v6.15.9+incompatible\n[0m[91mgo: downloading github.com/openzipkin/zipkin-go v0.2.5\n[0m[91mgo: downloading go.etcd.io/etcd v3.3.27+incompatible\n[0m[91mgo: downloading github.com/spf13/viper v1.10.1\n[0m[91mgo: downloading github.com/gohouse/golib v0.0.0-20210711163732-a5c22059eb75\n[0m[91mgo: downloading github.com/gohouse/t v0.0.0-20201007094014-630049a6bfe9\n[0m[91mgo: downloading github.com/beorn7/perks v1.0.1\n[0m[91mgo: downloading github.com/cespare/xxhash/v2 v2.1.2\n[0m[91mgo: downloading github.com/golang/protobuf v1.5.2\n[0m[91mgo: downloading github.com/prometheus/client_model v0.2.0\n[0m[91mgo: downloading github.com/prometheus/common v0.30.0\n[0m[91mgo: downloading github.com/prometheus/procfs v0.7.3\n[0m[91mgo: downloading github.com/hashicorp/consul/api v1.12.0\n[0m[91mgo: downloading github.com/satori/go.uuid v1.2.0\n[0m[91mgo: downloading github.com/go-kit/log v0.2.0\n[0m[91mgo: downloading google.golang.org/grpc v1.43.0\n[0m[91mgo: downloading github.com/juju/ratelimit v1.0.1\n[0m[91mgo: downloading github.com/gorilla/handlers v1.5.1\n[0m[91mgo: downloading github.com/gorilla/mux v1.6.2\n[0m[91mgo: downloading github.com/unknwon/com v1.0.1\n[0m[91mgo: downloading github.com/fsnotify/fsnotify v1.5.1\n[0m[91mgo: downloading github.com/magiconair/properties v1.8.5\n[0m[91mgo: downloading github.com/mitchellh/mapstructure v1.4.3\n[0m[91mgo: downloading github.com/spf13/afero v1.6.0\n[0m[91mgo: downloading github.com/spf13/cast v1.4.1\n[0m[91mgo: downloading github.com/spf13/jwalterweatherman v1.1.0\n[0m[91mgo: downloading github.com/spf13/pflag v1.0.5\n[0m[91mgo: downloading github.com/subosito/gotenv v1.2.0\n[0m[91mgo: downloading gopkg.in/ini.v1 v1.66.2\n[0m[91mgo: downloading google.golang.org/protobuf v1.27.1\n[0m[91mgo: downloading github.com/matttproud/golang_protobuf_extensions v1.0.1\n[0m[91mgo: downloading golang.org/x/sys v0.0.0-20211210111614-af8b64212486\n[0m[91mgo: downloading github.com/hashicorp/go-hclog v1.0.0\n[0m[91mgo: downloading github.com/hashicorp/go-cleanhttp v0.5.2\n[0m[91mgo: downloading github.com/hashicorp/go-rootcerts v1.0.2\n[0m[91mgo: downloading github.com/hashicorp/serf v0.9.6\n[0m[91mgo: downloading github.com/go-logfmt/logfmt v0.5.1\n[0m[91mgo: downloading go.etcd.io/etcd/api/v3 v3.5.1\n[0m[91mgo: downloading go.etcd.io/etcd/client/pkg/v3 v3.5.1\n[0m[91mgo: downloading go.uber.org/zap v1.19.1\n[0m[91mgo: downloading github.com/felixge/httpsnoop v1.0.1\n[0m[91mgo: downloading golang.org/x/text v0.3.7\n[0m[91mgo: downloading github.com/hashicorp/hcl v1.0.0\n[0m[91mgo: downloading github.com/pelletier/go-toml v1.9.4\n[0m[91mgo: downloading gopkg.in/yaml.v2 v2.4.0\n[0m[91mgo: downloading google.golang.org/genproto v0.0.0-20211208223120-3a66f561d7aa\n[0m[91mgo: downloading golang.org/x/net v0.0.0-20210917221730-978cfadd31cf\n[0m[91mgo: downloading github.com/fatih/color v1.13.0\n[0m[91mgo: downloading github.com/mattn/go-isatty v0.0.14\n[0m[91mgo: downloading github.com/gogo/protobuf v1.3.2\n[0m[91mgo: downloading github.com/coreos/go-semver v0.3.0\n[0m[91mgo: downloading github.com/coreos/go-systemd/v22 v22.3.2\n[0m[91mgo: downloading github.com/armon/go-metrics v0.3.10\n[0m[91mgo: downloading go.uber.org/atomic v1.9.0\n[0m[91mgo: downloading go.uber.org/multierr v1.7.0\n[0m[91mgo: downloading github.com/mattn/go-colorable v0.1.12\n[0m[91mgo: downloading github.com/hashicorp/go-immutable-radix v1.3.1\n[0m[91mgo: downloading github.com/hashicorp/golang-lru v0.5.4\n[0mRemoving intermediate container 579fe50826f5\n ---> cae983e26bfd\nStep 7/7 : ENTRYPOINT  [\"./sk-admin\"]\n ---> Running in 583d0d8b8a6c\nRemoving intermediate container 583d0d8b8a6c\n ---> 1c05192ec3ff\nSuccessfully built 1c05192ec3ff\nSuccessfully tagged seckill-admin:V11.0\n+ docker tag seckill-admin:V11.0 192.168.145.132/default/seckill-admin:V11.0\n+ docker push 192.168.145.132/default/seckill-admin:V11.0\nThe push refers to repository [192.168.145.132/default/seckill-admin]\ne941d417a8db: Preparing\ne466c07e64b6: Preparing\n2f3f96def614: Preparing\nd82b47d992c3: Preparing\n2fa2c70b216a: Preparing\nbab89c562840: Preparing\n26a504e63be4: Preparing\n8bf42db0de72: Preparing\n31892cc314cb: Preparing\n11936051f93b: Preparing\nbab89c562840: Waiting\n26a504e63be4: Waiting\n8bf42db0de72: Waiting\n31892cc314cb: Waiting\n11936051f93b: Waiting\nd82b47d992c3: Layer already exists\n2f3f96def614: Layer already exists\n2fa2c70b216a: Layer already exists\nbab89c562840: Layer already exists\n26a504e63be4: Layer already exists\n8bf42db0de72: Layer already exists\n31892cc314cb: Layer already exists\n11936051f93b: Layer already exists\ne466c07e64b6: Pushed\ne941d417a8db: Pushed\nV11.0: digest: sha256:f98eb3e181643ecc244f431b2cf81d1fff6b7b1a80b75e509358a1a783c77097 size: 2426\nFinished: SUCCESS\n', NULL, 'SUCCESS', '2022-04-12 21:58:27', 'V11.0');
INSERT INTO `builds` VALUES ('git@github.com:jianggaishi/0412go-seckill.git', '', 1, '2022-04-12 22:01:52', 1, '2022-04-12 22:01:52', NULL, 'tag', 38, 'seckill-app', 'default', 'Started by user admin\nRunning as SYSTEM\nBuilding in workspace /var/lib/jenkins/workspace/seckill-app.default\nThe recommended git tool is: NONE\nusing credential jenkins\nCloning the remote Git repository\nCloning repository git@github.com:jianggaishi/0412go-seckill.git\n > git init /var/lib/jenkins/workspace/seckill-app.default # timeout=10\nFetching upstream changes from git@github.com:jianggaishi/0412go-seckill.git\n > git --version # timeout=10\n > git --version # \'git version 2.17.1\'\nusing GIT_SSH to set credentials 0315test\n > git fetch --tags --progress -- git@github.com:jianggaishi/0412go-seckill.git +refs/heads/*:refs/remotes/origin/* # timeout=10\n > git config remote.origin.url git@github.com:jianggaishi/0412go-seckill.git # timeout=10\n > git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* # timeout=10\nAvoid second fetch\n > git rev-parse refs/remotes/origin/tags/V11.0^{commit} # timeout=10\n > git rev-parse tags/V11.0^{commit} # timeout=10\nChecking out Revision 764b17fbdf0b078d06879ad01a3184ac9b283323 (tags/V11.0)\n > git config core.sparsecheckout # timeout=10\n > git checkout -f 764b17fbdf0b078d06879ad01a3184ac9b283323 # timeout=10\nCommit message: \"不修改dockerfile 修改了consule等连接地址\"\nFirst time build. Skipping changelog.\n[seckill-app.default] $ /bin/sh -xe /tmp/jenkins1724718311541744561.sh\n+ APPNAME=seckill-app\n+ BUILD_PATH=\n+ NAMESPACE=default\n+ HUB_ADDR=192.168.145.132\n+ cd seckill-app\n+ docker build -f Dockerfile --rm -t seckill-app:V11.0 .\nSending build context to Docker daemon  864.8kB\r\r\nStep 1/7 : FROM golang:1.17\n ---> 276895edf967\nStep 2/7 : RUN mkdir /app\n ---> Using cache\n ---> 98db40d54773\nStep 3/7 : COPY . /app\n ---> a455665b2b91\nStep 4/7 : WORKDIR /app/sk-app\n ---> Running in c8fd9454c271\nRemoving intermediate container c8fd9454c271\n ---> 8b8e4708e38d\nStep 5/7 : ENV GOPROXY https://goproxy.cn,direct\n ---> Running in 76c26d70fdd0\nRemoving intermediate container 76c26d70fdd0\n ---> 1269d893739e\nStep 6/7 : RUN go build .\n ---> Running in 70ccd91ff34c\n[91mgo: downloading github.com/spf13/viper v1.10.1\ngo: downloading github.com/go-kit/kit v0.12.0\n[0m[91mgo: downloading github.com/go-redis/redis v6.15.9+incompatible\n[0m[91mgo: downloading github.com/samuel/go-zookeeper v0.0.0-20201211165307-7117e9ea2414\n[0m[91mgo: downloading github.com/unknwon/com v1.0.1\n[0m[91mgo: downloading golang.org/x/time v0.0.0-20210723032227-1f47c861a9ac\n[0m[91mgo: downloading github.com/fsnotify/fsnotify v1.5.1\n[0m[91mgo: downloading github.com/magiconair/properties v1.8.5\n[0m[91mgo: downloading github.com/mitchellh/mapstructure v1.4.3\ngo: downloading github.com/spf13/afero v1.6.0\n[0m[91mgo: downloading github.com/spf13/cast v1.4.1\n[0m[91mgo: downloading github.com/spf13/jwalterweatherman v1.1.0\n[0m[91mgo: downloading github.com/spf13/pflag v1.0.5\n[0m[91mgo: downloading github.com/subosito/gotenv v1.2.0\n[0m[91mgo: downloading gopkg.in/ini.v1 v1.66.2\n[0m[91mgo: downloading github.com/openzipkin/zipkin-go v0.2.5\n[0m[91mgo: downloading go.etcd.io/etcd/client/v3 v3.5.1\n[0m[91mgo: downloading github.com/hashicorp/consul/api v1.12.0\n[0m[91mgo: downloading github.com/satori/go.uuid v1.2.0\n[0m[91mgo: downloading go.etcd.io/etcd v3.3.27+incompatible\n[0m[91mgo: downloading github.com/juju/ratelimit v1.0.1\n[0m[91mgo: downloading github.com/gorilla/mux v1.6.2\n[0m[91mgo: downloading github.com/prometheus/client_golang v1.11.0\n[0m[91mgo: downloading github.com/go-kit/log v0.2.0\n[0m[91mgo: downloading google.golang.org/grpc v1.43.0\n[0m[91mgo: downloading golang.org/x/sys v0.0.0-20211210111614-af8b64212486\n[0m[91mgo: downloading github.com/hashicorp/hcl v1.0.0\n[0m[91mgo: downloading github.com/pelletier/go-toml v1.9.4\n[0m[91mgo: downloading gopkg.in/yaml.v2 v2.4.0\n[0m[91mgo: downloading golang.org/x/text v0.3.7\n[0m[91mgo: downloading github.com/hashicorp/go-hclog v1.0.0\n[0m[91mgo: downloading github.com/hashicorp/go-cleanhttp v0.5.2\n[0m[91mgo: downloading github.com/hashicorp/go-rootcerts v1.0.2\n[0m[91mgo: downloading github.com/hashicorp/serf v0.9.6\n[0m[91mgo: downloading github.com/go-logfmt/logfmt v0.5.1\n[0m[91mgo: downloading github.com/prometheus/client_model v0.2.0\n[0m[91mgo: downloading github.com/prometheus/common v0.30.0\n[0m[91mgo: downloading google.golang.org/genproto v0.0.0-20211208223120-3a66f561d7aa\n[0m[91mgo: downloading go.etcd.io/etcd/api/v3 v3.5.1\n[0m[91mgo: downloading go.etcd.io/etcd/client/pkg/v3 v3.5.1\n[0m[91mgo: downloading go.uber.org/zap v1.19.1\n[0m[91mgo: downloading github.com/fatih/color v1.13.0\ngo: downloading golang.org/x/net v0.0.0-20210917221730-978cfadd31cf\ngo: downloading github.com/mattn/go-isatty v0.0.14\n[0m[91mgo: downloading github.com/beorn7/perks v1.0.1\ngo: downloading github.com/cespare/xxhash/v2 v2.1.2\n[0m[91mgo: downloading github.com/golang/protobuf v1.5.2\n[0m[91mgo: downloading github.com/prometheus/procfs v0.7.3\n[0m[91mgo: downloading github.com/armon/go-metrics v0.3.10\n[0m[91mgo: downloading github.com/matttproud/golang_protobuf_extensions v1.0.1\n[0m[91mgo: downloading github.com/gogo/protobuf v1.3.2\n[0m[91mgo: downloading github.com/coreos/go-semver v0.3.0\n[0m[91mgo: downloading github.com/coreos/go-systemd/v22 v22.3.2\n[0m[91mgo: downloading go.uber.org/atomic v1.9.0\n[0m[91mgo: downloading go.uber.org/multierr v1.7.0\n[0m[91mgo: downloading github.com/mattn/go-colorable v0.1.12\n[0m[91mgo: downloading google.golang.org/protobuf v1.27.1\n[0m[91mgo: downloading github.com/hashicorp/go-immutable-radix v1.3.1\n[0m[91mgo: downloading github.com/hashicorp/golang-lru v0.5.4\n[0mRemoving intermediate container 70ccd91ff34c\n ---> 64e7756f5ed4\nStep 7/7 : ENTRYPOINT  [\"./sk-app\"]\n ---> Running in eb73a2bfb16c\nRemoving intermediate container eb73a2bfb16c\n ---> b91a5b1d4d90\nSuccessfully built b91a5b1d4d90\nSuccessfully tagged seckill-app:V11.0\n+ docker tag seckill-app:V11.0 192.168.145.132/default/seckill-app:V11.0\n+ docker push 192.168.145.132/default/seckill-app:V11.0\nThe push refers to repository [192.168.145.132/default/seckill-app]\n009b607e818f: Preparing\n6612913e97ad: Preparing\n2f3f96def614: Preparing\nd82b47d992c3: Preparing\n2fa2c70b216a: Preparing\nbab89c562840: Preparing\n26a504e63be4: Preparing\n8bf42db0de72: Preparing\n31892cc314cb: Preparing\n11936051f93b: Preparing\nbab89c562840: Waiting\n26a504e63be4: Waiting\n8bf42db0de72: Waiting\n31892cc314cb: Waiting\n11936051f93b: Waiting\n2f3f96def614: Mounted from default/seckill-admin\n2fa2c70b216a: Mounted from default/seckill-admin\nd82b47d992c3: Mounted from default/seckill-admin\n6612913e97ad: Pushed\nbab89c562840: Mounted from default/seckill-admin\n26a504e63be4: Mounted from default/seckill-admin\n8bf42db0de72: Mounted from default/seckill-admin\n11936051f93b: Mounted from default/seckill-admin\n31892cc314cb: Mounted from default/seckill-admin\n009b607e818f: Pushed\nV11.0: digest: sha256:6c46664e9e2fbf101c2db5b899311c564c34ff153dc0007b487037c9baa5ab30 size: 2426\nFinished: SUCCESS\n', NULL, 'SUCCESS', '2022-04-12 22:03:32', 'V11.0');
INSERT INTO `builds` VALUES ('git@github.com:jianggaishi/0412go-seckill.git', '', 1, '2022-04-12 22:04:48', 1, '2022-04-12 22:04:48', NULL, 'tag', 39, 'seckill-core', 'default', 'Started by user admin\nRunning as SYSTEM\nBuilding in workspace /var/lib/jenkins/workspace/seckill-core.default\nThe recommended git tool is: NONE\nusing credential jenkins\nCloning the remote Git repository\nCloning repository git@github.com:jianggaishi/0412go-seckill.git\n > git init /var/lib/jenkins/workspace/seckill-core.default # timeout=10\nFetching upstream changes from git@github.com:jianggaishi/0412go-seckill.git\n > git --version # timeout=10\n > git --version # \'git version 2.17.1\'\nusing GIT_SSH to set credentials 0315test\n > git fetch --tags --progress -- git@github.com:jianggaishi/0412go-seckill.git +refs/heads/*:refs/remotes/origin/* # timeout=10\n > git config remote.origin.url git@github.com:jianggaishi/0412go-seckill.git # timeout=10\n > git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* # timeout=10\nAvoid second fetch\n > git rev-parse refs/remotes/origin/tags/V11.0^{commit} # timeout=10\n > git rev-parse tags/V11.0^{commit} # timeout=10\nChecking out Revision 764b17fbdf0b078d06879ad01a3184ac9b283323 (tags/V11.0)\n > git config core.sparsecheckout # timeout=10\n > git checkout -f 764b17fbdf0b078d06879ad01a3184ac9b283323 # timeout=10\nCommit message: \"不修改dockerfile 修改了consule等连接地址\"\nFirst time build. Skipping changelog.\n[seckill-core.default] $ /bin/sh -xe /tmp/jenkins580845265749269065.sh\n+ APPNAME=seckill-core\n+ BUILD_PATH=\n+ NAMESPACE=default\n+ HUB_ADDR=192.168.145.132\n+ cd seckill-core\n+ docker build -f Dockerfile --rm -t seckill-core:V11.0 .\nSending build context to Docker daemon  865.8kB\r\r\nStep 1/7 : FROM golang:1.17\n ---> 276895edf967\nStep 2/7 : RUN mkdir /app\n ---> Using cache\n ---> 98db40d54773\nStep 3/7 : COPY . /app\n ---> e3153c41df52\nStep 4/7 : WORKDIR /app/sk-core\n ---> Running in e09bd75d4df7\nRemoving intermediate container e09bd75d4df7\n ---> 9a48f1ab65f3\nStep 5/7 : ENV GOPROXY https://goproxy.cn,direct\n ---> Running in 1b94832f463c\nRemoving intermediate container 1b94832f463c\n ---> f1ad731e81b0\nStep 6/7 : RUN go build .\n ---> Running in 88587ed61d0a\n[91mgo: downloading github.com/go-redis/redis v6.15.9+incompatible\n[0m[91mgo: downloading github.com/samuel/go-zookeeper v0.0.0-20201211165307-7117e9ea2414\n[0m[91mgo: downloading github.com/go-kit/kit v0.12.0\n[0m[91mgo: downloading github.com/openzipkin/zipkin-go v0.2.5\n[0m[91mgo: downloading github.com/spf13/viper v1.10.1\ngo: downloading go.etcd.io/etcd/client/v3 v3.5.1\n[0m[91mgo: downloading github.com/hashicorp/consul/api v1.12.0\n[0m[91mgo: downloading go.etcd.io/etcd v3.3.27+incompatible\n[0m[91mgo: downloading github.com/satori/go.uuid v1.2.0\n[0m[91mgo: downloading github.com/fsnotify/fsnotify v1.5.1\n[0m[91mgo: downloading github.com/magiconair/properties v1.8.5\n[0m[91mgo: downloading github.com/mitchellh/mapstructure v1.4.3\n[0m[91mgo: downloading github.com/spf13/afero v1.6.0\n[0m[91mgo: downloading github.com/spf13/cast v1.4.1\n[0m[91mgo: downloading github.com/spf13/jwalterweatherman v1.1.0\n[0m[91mgo: downloading github.com/spf13/pflag v1.0.5\n[0m[91mgo: downloading github.com/subosito/gotenv v1.2.0\n[0m[91mgo: downloading gopkg.in/ini.v1 v1.66.2\n[0m[91mgo: downloading github.com/go-kit/log v0.2.0\n[0m[91mgo: downloading github.com/hashicorp/go-hclog v1.0.0\n[0m[91mgo: downloading github.com/hashicorp/go-cleanhttp v0.5.2\n[0m[91mgo: downloading github.com/hashicorp/go-rootcerts v1.0.2\n[0m[91mgo: downloading github.com/hashicorp/serf v0.9.6\n[0m[91mgo: downloading golang.org/x/sys v0.0.0-20211210111614-af8b64212486\n[0m[91mgo: downloading github.com/hashicorp/hcl v1.0.0\n[0m[91mgo: downloading github.com/pelletier/go-toml v1.9.4\ngo: downloading gopkg.in/yaml.v2 v2.4.0\n[0m[91mgo: downloading golang.org/x/text v0.3.7\n[0m[91mgo: downloading github.com/go-logfmt/logfmt v0.5.1\n[0m[91mgo: downloading github.com/fatih/color v1.13.0\n[0m[91mgo: downloading github.com/mattn/go-isatty v0.0.14\n[0m[91mgo: downloading github.com/armon/go-metrics v0.3.10\n[0m[91mgo: downloading go.etcd.io/etcd/api/v3 v3.5.1\n[0m[91mgo: downloading go.etcd.io/etcd/client/pkg/v3 v3.5.1\n[0m[91mgo: downloading go.uber.org/zap v1.19.1\n[0m[91mgo: downloading google.golang.org/grpc v1.43.0\n[0m[91mgo: downloading github.com/mattn/go-colorable v0.1.12\n[0m[91mgo: downloading github.com/hashicorp/go-immutable-radix v1.3.1\n[0m[91mgo: downloading github.com/gogo/protobuf v1.3.2\n[0m[91mgo: downloading github.com/golang/protobuf v1.5.2\n[0m[91mgo: downloading github.com/coreos/go-semver v0.3.0\n[0m[91mgo: downloading google.golang.org/genproto v0.0.0-20211208223120-3a66f561d7aa\n[0m[91mgo: downloading github.com/coreos/go-systemd/v22 v22.3.2\n[0m[91mgo: downloading go.uber.org/atomic v1.9.0\n[0m[91mgo: downloading go.uber.org/multierr v1.7.0\n[0m[91mgo: downloading golang.org/x/net v0.0.0-20210917221730-978cfadd31cf\n[0m[91mgo: downloading github.com/hashicorp/golang-lru v0.5.4\n[0m[91mgo: downloading google.golang.org/protobuf v1.27.1\n[0mRemoving intermediate container 88587ed61d0a\n ---> 511d57324b19\nStep 7/7 : ENTRYPOINT  [\"./sk-core\"]\n ---> Running in 6f6894146995\nRemoving intermediate container 6f6894146995\n ---> dd77dcddd2b3\nSuccessfully built dd77dcddd2b3\nSuccessfully tagged seckill-core:V11.0\n+ docker tag seckill-core:V11.0 192.168.145.132/default/seckill-core:V11.0\n+ docker push 192.168.145.132/default/seckill-core:V11.0\nThe push refers to repository [192.168.145.132/default/seckill-core]\n5a139022ebe1: Preparing\n63e258870d7c: Preparing\n2f3f96def614: Preparing\nd82b47d992c3: Preparing\n2fa2c70b216a: Preparing\nbab89c562840: Preparing\n26a504e63be4: Preparing\n8bf42db0de72: Preparing\n31892cc314cb: Preparing\n11936051f93b: Preparing\n26a504e63be4: Waiting\n8bf42db0de72: Waiting\n31892cc314cb: Waiting\n11936051f93b: Waiting\nbab89c562840: Waiting\nd82b47d992c3: Mounted from default/seckill-app\n2fa2c70b216a: Mounted from default/seckill-app\n2f3f96def614: Mounted from default/seckill-app\nbab89c562840: Mounted from default/seckill-app\n63e258870d7c: Pushed\n26a504e63be4: Mounted from default/seckill-app\n8bf42db0de72: Mounted from default/seckill-app\n31892cc314cb: Mounted from default/seckill-app\n11936051f93b: Mounted from default/seckill-app\n5a139022ebe1: Pushed\nV11.0: digest: sha256:c9d9df4f6b722078938aba7ec97352ba0890420dbe02f54e84724c2c5a1b0c90 size: 2426\nFinished: SUCCESS\n', NULL, 'SUCCESS', '2022-04-12 22:06:24', 'V11.0');

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule`  (
  `p_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v0` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v5` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO `casbin_rule` VALUES ('g', '40', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '24', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '24', '4', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '31', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '138', '9', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '136', '8', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '3', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '4', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '6', '4', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '7', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '10', '4', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '10', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '7', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '12', '4', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/dashboard', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/security', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/tools', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/markets', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/permission/menu', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/proclaim', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/namespace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/namespace/sync/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/namespace/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/namespace/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/namespace', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/storage/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/pvc/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/storageclass/sync/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/storageclass/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/storageclass/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/storageclass', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/storageclass', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/persistentvolumeclaim/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/persistentvolumeclaim/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/persistentvolumeclaim/{namespace}/pvc/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/persistentvolumeclaim/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/gitaddr/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/pomfile/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/pods/{namespace}/detail/{name}/pod/{podName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/pods/{namespace}/metrics/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/pods/{namespace}/delete/{name}/pod/{podName}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/pods/{namespace}/detail/{name}/pod', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/git/tags/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/git/branches/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/git/dockerfile/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/discovery/services/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/discovery/{namespace}/services/{serviceName}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/discovery/{namespace}/services/{serviceName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/discovery/{namespace}/services', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/discovery/{namespace}/services', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/discovery/{namespace}/services/{serviceName}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/yaml/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/command/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/expansion/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/scale/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/pvc/{name}/bind', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/pvc/{name}/unbind', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/service/{name}/port', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/service/{name}/port', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/logging/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/probe/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/mesh/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/build/jenkins/{namespace}/project/{name}/building', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/build/jenkins/{namespace}/project/{name}/console/{number}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/build/jenkins/{namespace}/project/{name}/abort/{number}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/admin-add', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/{groupId}/admin-update', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/member-like', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/admin-delete/{groupId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/namespace/{ns}/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/namespace/{ns}/cronjob', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/{groupId}/admin-add-project/{projectId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/{groupId}/admin-add-cronjob/{cronjobId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/{groupId}/admin-add-member/{memberId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/{groupId}/admin-del-member/{memberId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/{groupId}/admin-del-project/{projectId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/{groupId}/admin-del-cronjob/{cronjobId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/account', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/account/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/account/base/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/account/current', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/account/notice/receive', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/account/notice/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/account/unBindWechat', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/wechat/qr', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/wechat/testSend', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/notice', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/notice/message', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/notice/message/readcount', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/notice/tips', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/persistentvolume/{namespace}/pv/{pvName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/configMap', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/basic/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/ws/pods/console/exec', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/proclaim', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/proclaim', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/proclaim/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/member/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/namespace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/event/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/terminal/{namespace}/index/{name}/pod/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/acl/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/{namespace}/one/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/{namespace}/one/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/{namespace}/one/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/kv/{namespace}/one/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/kv/{namespace}/list/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/kv/{namespace}/one/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/consul/kv/{namespace}/one/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/faketime', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/tools/faketime/{namespace}/project/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/configmap/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/configmap/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/configmap/{namespace}/project/{name}/data', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/configmap/{namespace}/project/{name}/data', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/duplication', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/webhook/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/tools/duplication/single', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/git/branches', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/git/tags', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/workspace/{namespace}/metrics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/workspace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/workspace/{namespace}/active', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/dockerfile/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/market/dockerfile/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/market/dockerfile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/market/dockerfile', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/market/dockerfile/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/market/dockerfile/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/market/dockerfile/{id:[0-9]+}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/ingress/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/gateway/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/virtualservice/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/serviceentry/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/cornjob/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/statistics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/monitor', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/hooks/webhooks/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/audit', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/audit/{namespace}/refused/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/statistics/{namespace}/build', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/app/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/detail/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/persistentvolumeclaim/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/persistentvolumeclaim/{namespace}/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/monitor/prometheus/query/network', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/monitor/prometheus/query/ops', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/member/me', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/member/namespaces', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/ingress/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/ingress/{namespace}/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/ingress/{namespace}/detail/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/ingress/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/ingress/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/ingress/{namespace}/generate/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/deployment/{namespace}/hosts/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/build/jenkins/{namespace}/project/{name}/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/build/jenkins/{namespace}/project/{name}/history', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/build/jenkins/{namespace}/project/{name}/rollback/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group/user-my-list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/system', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/tools', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/markets', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/group', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/proclaim', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/namespace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/storage/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/pvc/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/statistics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/monitor', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '2', '/audit', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/dashboard', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/tools', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/markets', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/permission/menu', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/member', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/pvc/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/persistentvolumeclaim/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/persistentvolumeclaim/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/persistentvolumeclaim/{namespace}/pvc/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/persistentvolumeclaim/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/gitaddr/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/pomfile/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/pods/{namespace}/detail/{name}/pod/{podName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/pods/{namespace}/metrics/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/pods/{namespace}/delete/{name}/pod/{podName}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/pods/{namespace}/detail/{name}/pod', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/git/tags/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/git/branches/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/git/dockerfile/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/discovery/services/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/discovery/{namespace}/services/{serviceName}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/discovery/{namespace}/services/{serviceName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/discovery/{namespace}/services', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/discovery/{namespace}/services', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/discovery/{namespace}/services/{serviceName}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/yaml/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/command/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/expansion/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/scale/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/pvc/{name}/bind', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/pvc/{name}/unbind', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/service/{name}/port', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/service/{name}/port', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/logging/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/probe/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/mesh/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/build/jenkins/{namespace}/project/{name}/building', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/build/jenkins/{namespace}/project/{name}/console/{number}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/build/jenkins/{namespace}/project/{name}/abort/{number}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/admin-add', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/{groupId}/admin-update', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/member-like', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/admin-delete/{groupId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/namespace/{ns}/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/namespace/{ns}/cronjob', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/{groupId}/admin-add-project/{projectId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/{groupId}/admin-add-cronjob/{cronjobId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/{groupId}/admin-add-member/{memberId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/{groupId}/admin-del-member/{memberId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/{groupId}/admin-del-project/{projectId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/{groupId}/admin-del-cronjob/{cronjobId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/account', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/account/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/account/base/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/account/current', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/account/notice/receive', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/account/notice/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/account/unBindWechat', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/wechat/qr', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/wechat/testSend', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/notice', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/notice/message', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/notice/message/readcount', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/notice/tips', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/persistentvolume/{namespace}/pv/{pvName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/configMap', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/basic/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ws/pods/console/exec', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/event/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/terminal/{namespace}/index/{name}/pod/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/acl/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/{namespace}/one/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/{namespace}/one/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/{namespace}/one/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/kv/{namespace}/one/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/kv/{namespace}/list/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/kv/{namespace}/one/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/kv/{namespace}/one/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/faketime', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/tools/faketime/{namespace}/project/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/configmap/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/configmap/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/configmap/{namespace}/project/{name}/data', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/configmap/{namespace}/project/{name}/data', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/duplication', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/webhook/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/tools/duplication/single', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/git/branches', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/git/tags', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/workspace/{namespace}/metrics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/workspace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/workspace/{namespace}/active', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/dockerfile/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/market/dockerfile/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/market/dockerfile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/market/dockerfile', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/market/dockerfile/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/market/dockerfile/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/market/dockerfile/{id:[0-9]+}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ingress/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/cornjob/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/statistics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/monitor', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/hooks/webhooks/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/audit', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/audit/{namespace}/refused/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/statistics/{namespace}/build', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/app/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/detail/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/persistentvolumeclaim/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/persistentvolumeclaim/{namespace}/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/monitor/prometheus/query/network', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/monitor/prometheus/query/ops', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/member/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/member', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/member/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/member/me', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/member/namespaces', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ingress/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ingress/{namespace}/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ingress/{namespace}/detail/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ingress/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ingress/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ingress/{namespace}/generate/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/deployment/{namespace}/hosts/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/build/jenkins/{namespace}/project/{name}/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/build/jenkins/{namespace}/project/{name}/history', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/build/jenkins/{namespace}/project/{name}/rollback/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group/user-my-list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/dashboard', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/security', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/system', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/tools', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/markets', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/member', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/group', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/pvc/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/discovery/services/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/account', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/notice', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/configMap', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/consul/acl/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/faketime', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/duplication', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/webhook/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/dockerfile/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/ingress/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/statistics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/monitor', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '3', '/audit', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/permission/menu', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/project/{namespace}/gitaddr/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/project/{namespace}/pomfile/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/pods/{namespace}/detail/{name}/pod/{podName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/pods/{namespace}/metrics/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/pods/{namespace}/delete/{name}/pod/{podName}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/pods/{namespace}/detail/{name}/pod', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/git/tags/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/git/branches/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/git/dockerfile/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/discovery/{namespace}/services/{serviceName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/discovery/{namespace}/services', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/yaml/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/command/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/expansion/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/scale/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/pvc/{name}/bind', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/pvc/{name}/unbind', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/service/{name}/port', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/service/{name}/port', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/logging/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/probe/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/mesh/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/build/jenkins/{namespace}/project/{name}/building', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/build/jenkins/{namespace}/project/{name}/console/{number}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/build/jenkins/{namespace}/project/{name}/abort/{number}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/account/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/account/current', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/account/notice/receive', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/account/unBindWechat', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/wechat/testSend', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/notice', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/notice/message', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/notice/message/readcount', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/notice/tips', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/group/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/project/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/ws/pods/console/exec', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/hooks/webhooks/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/hooks/webhooks/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/event/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/terminal/{namespace}/index/{name}/pod/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/configmap/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/configmap/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/configmap/{namespace}/project/{name}/data', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/configmap/{namespace}/project/{name}/data', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/workspace/{namespace}/metrics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/project/{namespace}/workspace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/workspace/{namespace}/active', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/project/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/member/me', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/member/namespaces', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/ingress/{namespace}/generate/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/deployment/{namespace}/hosts/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/build/jenkins/{namespace}/project/{name}/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/build/jenkins/{namespace}/project/{name}/history', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/build/jenkins/{namespace}/project/{name}/rollback/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/group/user-my-list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/dashboard', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/discovery/services/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/account', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '5', '/notice', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '11', '4', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '8', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '2', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '9', '4', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '13', '1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/dashboard', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/security', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/template/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/system', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/tools', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/markets', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/permission', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/permission/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/permission/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/permission/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/system/permission', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/permission/drag', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/permission/menu', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/member', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/role', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/proclaim', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/namespace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/namespace/sync/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/namespace/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/namespace/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/namespace', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/template', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/template', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/template/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/template/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/template/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/storage/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/pvc/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/storageclass/sync/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/storageclass/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/storageclass/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/storageclass', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/storageclass', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/persistentvolumeclaim/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/persistentvolumeclaim/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/persistentvolumeclaim/{namespace}/pvc/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/persistentvolumeclaim/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}/gitaddr/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}/pomfile/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/pods/{namespace}/detail/{name}/pod/{podName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/pods/{namespace}/metrics/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/pods/{namespace}/delete/{name}/pod/{podName}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/pods/{namespace}/detail/{name}/pod', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/git/tags/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/git/branches/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/git/dockerfile/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/discovery/services/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/discovery/{namespace}/services/{serviceName}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/discovery/{namespace}/services/{serviceName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/discovery/{namespace}/services', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/discovery/{namespace}/services', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/discovery/{namespace}/services/{serviceName}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/yaml/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/command/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/expansion/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/scale/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/pvc/{name}/bind', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/pvc/{name}/unbind', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/service/{name}/port', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/service/{name}/port', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/logging/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/probe/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/deployment/{namespace}/mesh/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/build/jenkins/{namespace}/project/{name}/building', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/build/jenkins/{namespace}/project/{name}/console/{number}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/build/jenkins/{namespace}/project/{name}/abort/{number}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/admin-add', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/admin-update', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/member-like', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/admin-delete/{groupId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/namespace/{ns}/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/namespace/{ns}/cronjob', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/admin-add-project/{projectId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/admin-add-cronjob/{cronjobId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/admin-add-member/{memberId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/admin-del-member/{memberId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/admin-del-project/{projectId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/admin-del-cronjob/{cronjobId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/role/{id:[0-9]+}/permission', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/role/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/role/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/role', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/role/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/role/{id:[0-9]+}/permission', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/template/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/base/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/current', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/notice/receive', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/notice/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/notice/receive', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/current', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/base/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/unBindWechat', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/wechat/qr', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/wechat/testSend', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/notice', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/notice/message', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/notice/message/readcount', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/notice/tips', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/persistentvolume/{namespace}/pv/{pvName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configMap', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}/basic/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/base/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/current', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/notice/receive', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/notice/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/account/unBindWechat', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/notice/message', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/notice/message/readcount', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/notice/tips', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/ws/pods/console/exec', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/proclaim', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/proclaim', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/proclaim/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/member/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/namespace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/event/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/terminal/{namespace}/index/{name}/pod/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/public/build/{namespace}/app/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/api', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/public/prometheus/alerts', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/acl/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/{namespace}/one/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/{namespace}/one/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/{namespace}/one/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/kv/{namespace}/one/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/kv/{namespace}/list/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/kv/{namespace}/one/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/consul/kv/{namespace}/one/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/faketime', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/tools/faketime/{namespace}/project/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/map', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/duplication', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/webhook/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/map', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/tools/duplication/single', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/map/add', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/map/update/{config_map_id}/{id}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/git/branches', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/git/tags', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/workspace/{namespace}/metrics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}/workspace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/dashboard/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/workspace/{namespace}/active', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/dockerfile/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/market/dockerfile/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/market/dockerfile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/market/dockerfile/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/market/dockerfile', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/market/dockerfile/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/market/dockerfile/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/market/dockerfile/{id:[0-9]+}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/ingress/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/gateway/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/virtualservice/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/serviceentry/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/cornjob/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/statistics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/monitor', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/hooks/webhooks/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/dashboard', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/audit', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/audit/{namespace}/refused/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/statistics/{namespace}/build', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/user-my-list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/user-ns-list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/owner-add-group', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/owner-update-group', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/owner-add-member/{memberId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/owner-del-member/{memberId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/owner-add-project/{projectId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/owner-del-project/{projectId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/owner-add-cronjob/{cronjobId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/owner-del-cronjob/{cronjobId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/owner-del-group', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/rel', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/member-like', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/namespace/{ns}/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/namespace/{ns}/cronjob', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/{groupId}/rel', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/config/detail', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/cronjob/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/cronjob/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/cronjob/{namespace}/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/cronjob/job/{namespace}/del', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/cronjob/{namespace}/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/cronjob/{namespace}/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/cronjob/log/{namespace}/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/env/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/env/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/env/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/env/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/map/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/map/{name}/onePull', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/map/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/delete/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/delete/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/env/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/env/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/env/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/config/{namespace}/env/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/dashboard', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/security', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/template/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/system', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/build/jenkins/{namespace}/cronjob/{name}/history', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/build/jenkins/{namespace}/cronjob/{name}/console/{number}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/name/exists', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/group/display_name/exists', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/markets', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/permission/menu', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/storageclass/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/storageclass', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/persistentvolumeclaim/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/persistentvolumeclaim/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/persistentvolumeclaim/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/gitaddr/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/pomfile/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/pods/{namespace}/detail/{name}/pod/{podName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/pods/{namespace}/metrics/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/pods/{namespace}/delete/{name}/pod/{podName}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/pods/{namespace}/detail/{name}/pod', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/git/tags/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/git/branches/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/git/dockerfile/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/discovery/{namespace}/services/{serviceName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/discovery/{namespace}/services', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/discovery/{namespace}/services', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/discovery/{namespace}/services/{serviceName}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/yaml/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/pvc/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/command/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/expansion/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/scale/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/pvc/{name}/bind', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/pvc/{name}/unbind', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/service/{name}/port', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/service/{name}/port', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/logging/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/probe/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/mesh/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/build/jenkins/{namespace}/project/{name}/building', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/build/jenkins/{namespace}/project/{name}/console/{number}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/build/jenkins/{namespace}/project/{name}/abort/{number}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/account', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/account/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/account/base/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/account/current', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/account/notice/receive', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/account/notice/update', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/account/unBindWechat', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/wechat/qr', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/wechat/testSend', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/notice', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/notice/message', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/notice/message/readcount', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/notice/tips', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/persistentvolume/{namespace}/pv/{pvName}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configMap', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/basic/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ws/pods/console/exec', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/hooks/webhooks/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/hooks/webhooks/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/event/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/terminal/{namespace}/index/{name}/pod/{podName}/container/{container}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/{namespace}/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/{namespace}/one/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/{namespace}/one/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/kv/{namespace}/one/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/kv/{namespace}/list/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/kv/{namespace}/one/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/kv/{namespace}/one/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}/data', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}/data', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/git/branches', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/git/tags', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/workspace/{namespace}/metrics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/workspace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/workspace/{namespace}/active', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/dockerfile/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/market/dockerfile/{id:[0-9]+}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/market/dockerfile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/market/dockerfile', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/market/dockerfile/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/market/dockerfile/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/market/dockerfile/{id:[0-9]+}/download', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ingress/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cornjob/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/statistics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/statistics/{namespace}/build', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/detail/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/persistentvolumeclaim/{namespace}/all', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/member/me', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/member/namespaces', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ingress/{namespace}/sync', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ingress/{namespace}/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ingress/{namespace}/detail/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ingress/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ingress/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ingress/{namespace}/generate/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/deployment/{namespace}/hosts/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/build/jenkins/{namespace}/project/{name}/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/build/jenkins/{namespace}/project/{name}/history', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/build/jenkins/{namespace}/project/{name}/rollback/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/user-my-list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/user-my-list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/user-ns-list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/owner-add-group', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/owner-update-group', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/owner-add-member/{memberId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/owner-del-member/{memberId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/owner-add-project/{projectId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/owner-del-project/{projectId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/owner-add-cronjob/{cronjobId}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/owner-del-cronjob/{cronjobId}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/owner-del-group', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/member-like', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/namespace/{ns}/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/namespace/{ns}/cronjob', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/{groupId}/rel', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/config/detail', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cronjob/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cronjob/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cronjob/{namespace}/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cronjob/job/{namespace}/del', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cronjob/{namespace}/{name}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cronjob/{namespace}/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cronjob/log/{namespace}/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/env/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/env/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/env/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/env/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/map/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/map/{name}/onePull', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/map/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/delete/{name}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}/data', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}/data', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/env/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/env/{name}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/env/{name}/{id:[0-9]+}', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/config/{namespace}/env/{name}/{id:[0-9]+}', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/build/jenkins/{namespace}/cronjob/{name}/history', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/build/jenkins/{namespace}/cronjob/{name}/console/{number}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/name/exists', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/display_name/exists', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/dashboard', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/workplace', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/conf', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/security', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/markets', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/storage/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/pvc/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/detail/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/discovery/services/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/account', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/notice', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/configMap', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/group/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/consul/acl/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/dockerfile/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/ingress/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/cornjob/list', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/statistics', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}/monitor/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/monitor/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '1', '/project/{namespace}/alerts/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '4', '/project/{namespace}/alerts/{name}', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', '1', '1', '', '', '', '');

-- ----------------------------
-- Table structure for config_data
-- ----------------------------
DROP TABLE IF EXISTS `config_data`;
CREATE TABLE `config_data`  (
  `config_map_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for config_map
-- ----------------------------
DROP TABLE IF EXISTS `config_map`;
CREATE TABLE `config_map`  (
  `created_at` datetime(0) DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for consul
-- ----------------------------
DROP TABLE IF EXISTS `consul`;
CREATE TABLE `consul`  (
  `create_index` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `modify_index` bigint(20) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cronjobs
-- ----------------------------
DROP TABLE IF EXISTS `cronjobs`;
CREATE TABLE `cronjobs`  (
  `active` int(11) DEFAULT NULL,
  `add_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `conf_map_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `git_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `git_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_schedule` datetime(0) DEFAULT NULL,
  `log_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `schedule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suspend` int(11) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dockerfiles
-- ----------------------------
DROP TABLE IF EXISTS `dockerfiles`;
CREATE TABLE `dockerfiles`  (
  `author_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `dockerfile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `download` bigint(20) DEFAULT NULL,
  `full_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  `sha256` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  `uploader_id` bigint(20) DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dockerfiles
-- ----------------------------
INSERT INTO `dockerfiles` VALUES (1, '2019-08-01 15:12:10', '', 'FROM kplcloud/python2:2.7-kafka\n\nCOPY ./ /opt/app/\n\nRUN pip install -r /opt/app/requirements.tx', 'FROM ubuntu:16.04\n\nENV DEBIAN_FRONTEND noninteractive\nRUN echo \"Asia/Shanghai\" > /etc/timezone\n\nRUN apt-get update && \\\n    apt-get install -y apt-utils build-essential libevent-dev \\\n        libjpeg-dev libxml2-dev libxslt-dev libffi-dev libssl-dev \\\n        libmysqlclient-dev libsasl2-dev wget unzip python2.7 python2.7-dev \\\n        python-pip tzdata && dpkg-reconfigure --frontend noninteractive tzdata && \\\n    pip install --upgrade pip && \\\n    easy_install -U setuptools\n\nWORKDIR /build\nRUN wget https://github.com/edenhill/librdkafka/archive/master.zip && \\\n    unzip master.zip && \\\n    cd /build/librdkafka-master && \\\n    ./configure --prefix /usr && \\\n    make && \\\n    make install\n\nWORKDIR /\nRUN rm -r -f /build && \\\n    apt-get clean\n\nRUN ln -s /usr/local/bin/pip /usr/lib/pip\n \nCMD [\"bash\"]', NULL, 'kplcloud/python2:2.7-kafka', 1, 'Python', 'python2', NULL, '6e155ce649eefb26bc0981eb8edefbe9917481f3200b04f056051161c1639701', 0, '2019-08-01 15:12:10', 0, '2.7-kafka');

-- ----------------------------
-- Table structure for event_history
-- ----------------------------
DROP TABLE IF EXISTS `event_history`;
CREATE TABLE `event_history`  (
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events`  (
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('构建', 1, 'Build');
INSERT INTO `events` VALUES ('申请应用', 2, 'Apply');
INSERT INTO `events` VALUES ('审计应用', 3, 'Audit');
INSERT INTO `events` VALUES ('删除应用', 4, 'Delete');
INSERT INTO `events` VALUES ('创建用户', 5, 'Member');
INSERT INTO `events` VALUES ('回滚应用', 6, 'Rollback');
INSERT INTO `events` VALUES ('日志采集', 7, 'Logging');
INSERT INTO `events` VALUES ('重启容器', 8, 'Reboot');
INSERT INTO `events` VALUES ('调整启动命令', 9, 'Command');
INSERT INTO `events` VALUES ('调整持久化存储', 10, 'Storage');
INSERT INTO `events` VALUES ('网关调整', 11, 'Gateway');
INSERT INTO `events` VALUES ('服务扩容', 14, 'Expansion');
INSERT INTO `events` VALUES ('服务伸缩', 15, 'Extend');
INSERT INTO `events` VALUES ('调整服务模式', 16, 'SwitchModel');
INSERT INTO `events` VALUES ('修改探针', 17, 'ReadinessProbe');

-- ----------------------------
-- Table structure for events_webhooks
-- ----------------------------
DROP TABLE IF EXISTS `events_webhooks`;
CREATE TABLE `events_webhooks`  (
  `events_id` int(11) NOT NULL,
  `webhooks_id` int(11) NOT NULL,
  PRIMARY KEY (`events_id`, `webhooks_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `created_at` datetime(0) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for groups_cronjobss
-- ----------------------------
DROP TABLE IF EXISTS `groups_cronjobss`;
CREATE TABLE `groups_cronjobss`  (
  `cronjobs_id` bigint(20) NOT NULL,
  `groups_id` bigint(20) NOT NULL,
  PRIMARY KEY (`cronjobs_id`, `groups_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for groups_memberss
-- ----------------------------
DROP TABLE IF EXISTS `groups_memberss`;
CREATE TABLE `groups_memberss`  (
  `members_id` bigint(20) NOT NULL,
  `groups_id` bigint(20) NOT NULL,
  PRIMARY KEY (`members_id`, `groups_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for groups_projectss
-- ----------------------------
DROP TABLE IF EXISTS `groups_projectss`;
CREATE TABLE `groups_projectss`  (
  `groups_id` bigint(20) NOT NULL,
  `projects_id` bigint(20) NOT NULL,
  PRIMARY KEY (`groups_id`, `projects_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members`  (
  `created_at` datetime(0) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` bigint(20) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('2022-02-21 18:22:45', '1811708131@qq.com', 1, '', '', 0, '', '', '2022-04-12 22:04:48', 'paas', '95740f57374c7ec91d464a716cca482269f0eb65c9341cd540c94ffce687cdfa0f6c46ab4d1207af583a7f8a2152de0a4673');

-- ----------------------------
-- Table structure for members_roless
-- ----------------------------
DROP TABLE IF EXISTS `members_roless`;
CREATE TABLE `members_roless`  (
  `members_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`members_id`, `roles_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of members_roless
-- ----------------------------
INSERT INTO `members_roless` VALUES (1, 1);

-- ----------------------------
-- Table structure for namespaces
-- ----------------------------
DROP TABLE IF EXISTS `namespaces`;
CREATE TABLE `namespaces`  (
  `created_at` datetime(0) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of namespaces
-- ----------------------------
INSERT INTO `namespaces` VALUES (NULL, 1, 'default', 'default', '2022-03-20 14:41:47');
INSERT INTO `namespaces` VALUES ('2022-03-20 14:37:57', 2, 'kpaas', 'kpaas', '2022-03-20 14:41:47');
INSERT INTO `namespaces` VALUES ('2022-03-20 14:37:57', 3, 'kube-node-lease', 'kube-node-lease', '2022-03-20 14:37:57');
INSERT INTO `namespaces` VALUES ('2022-03-20 14:37:57', 4, 'kube-public', 'kube-public', '2022-03-20 14:37:57');
INSERT INTO `namespaces` VALUES ('2022-03-20 14:37:57', 5, 'kube-system', 'kube-system', '2022-03-20 14:37:57');
INSERT INTO `namespaces` VALUES ('2022-03-20 14:37:57', 6, 'kubernetes-dashboard', 'kubernetes-dashboard', '2022-03-20 14:37:57');
INSERT INTO `namespaces` VALUES ('2022-04-04 12:01:02', 7, 'ingress-nginx', 'ingress-nginx', '2022-04-04 12:01:02');

-- ----------------------------
-- Table structure for namespaces_memberss
-- ----------------------------
DROP TABLE IF EXISTS `namespaces_memberss`;
CREATE TABLE `namespaces_memberss`  (
  `members_id` bigint(20) NOT NULL,
  `namespaces_id` bigint(20) NOT NULL,
  PRIMARY KEY (`members_id`, `namespaces_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of namespaces_memberss
-- ----------------------------
INSERT INTO `namespaces_memberss` VALUES (1, 1);
INSERT INTO `namespaces_memberss` VALUES (1, 2);

-- ----------------------------
-- Table structure for notice_member
-- ----------------------------
DROP TABLE IF EXISTS `notice_member`;
CREATE TABLE `notice_member`  (
  `created_at` datetime(0) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_read` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `notice_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for notice_receive
-- ----------------------------
DROP TABLE IF EXISTS `notice_receive`;
CREATE TABLE `notice_receive`  (
  `bee` int(11) DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `notice_action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `site` int(11) DEFAULT NULL,
  `sms` int(11) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  `wechat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` datetime(0) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proclaim_receive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proclaim_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 515 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0320.kpaas', '2022-03-20 14:46:06', 1, 1, 'hello0320', 'kpaas', '', '', '项目名称【hello0320】命名空间【kpaas】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0320.kpaas, Build版本：V6.0', '2022-03-20 14:46:26', 2, 1, 'hello0320', 'kpaas', '', '', '项目名称【hello0320】命名空间【kpaas】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0320.kpaas', '2022-03-20 14:46:26', 3, 1, 'hello0320', 'kpaas', '', '', '项目名称【hello0320】命名空间【kpaas】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/20 14:46:44\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0320.kpaas/1/\n', '2022-03-20 14:46:45', 4, 1, 'hello0320', 'kpaas', '', '', '项目名称【hello0320】命名空间【kpaas】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0320.kpaas', '2022-03-20 14:46:58', 5, 1, 'hello0320', 'kpaas', '', '', '项目名称【hello0320】命名空间【kpaas】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0320.default', '2022-03-20 14:47:31', 6, 1, 'hello0320', 'default', '', '', '项目名称【hello0320】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0320.default, Build版本：V6.0', '2022-03-20 14:51:58', 7, 1, 'hello0320', 'default', '', '', '项目名称【hello0320】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0320.default', '2022-03-20 14:51:59', 8, 1, 'hello0320', 'default', '', '', '项目名称【hello0320】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/20 14:52:10\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0320.default/1/\n', '2022-03-20 14:52:11', 9, 1, 'hello0320', 'default', '', '', '项目名称【hello0320】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: cmd.default', '2022-03-20 15:14:42', 10, 1, 'cmd', 'default', '', '', '项目名称【cmd】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0320.default', '2022-03-21 09:47:27', 11, 1, 'hello0320', 'default', '', '', '项目名称【hello0320】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 09:49:34', 12, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 09:49:54', 13, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 09:49:54', 14, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 09:50:08\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 09:50:09', 15, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 10:03:08', 16, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 10:03:48', 17, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 10:05:07', 18, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 10:06:11', 19, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 10:16:29', 20, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 10:16:29', 21, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 10:16:39\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 10:16:39', 22, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 11:11:43', 23, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 11:12:26', 24, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 11:13:00', 25, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 11:13:00', 26, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 11:13:10\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 11:13:10', 27, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 11:39:39', 28, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 11:40:13', 29, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 11:40:40', 30, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 11:40:40', 31, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 11:40:50\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 11:40:50', 32, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 12:29:08', 33, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 12:29:41', 34, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 12:30:18', 35, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 12:30:18', 36, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 12:30:29\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 12:30:30', 37, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 12:56:00', 38, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 12:56:51', 39, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 12:57:16', 40, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 12:57:16', 41, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 12:57:25\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 12:57:26', 42, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 13:07:23', 43, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 13:07:58', 44, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 13:08:08', 45, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 13:08:08', 46, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 13:08:20\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 13:08:20', 47, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 13:24:09', 48, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0312.default', '2022-03-21 13:24:39', 49, 1, 'hello0312', 'default', '', '', '项目名称【hello0312】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0312.default, Build版本：V6.0', '2022-03-21 13:24:58', 50, 1, 'hello0312', 'default', '', '', '项目名称【hello0312】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0312.default', '2022-03-21 13:24:58', 51, 1, 'hello0312', 'default', '', '', '项目名称【hello0312】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 13:25:14\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0312.default/1/\n', '2022-03-21 13:25:14', 52, 1, 'hello0312', 'default', '', '', '项目名称【hello0312】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0312.default', '2022-03-21 15:13:58', 53, 1, 'hello0312', 'default', '', '', '项目名称【hello0312】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 15:17:03', 54, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 15:17:49', 55, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 15:17:49', 56, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 15:18:03\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 15:18:03', 57, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 18:30:57', 58, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 18:31:29', 59, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 18:31:39', 60, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 18:31:39', 61, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 18:31:49\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 18:31:49', 62, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-21 18:48:22', 63, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0321.default', '2022-03-21 18:49:00', 64, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0321.default, Build版本：V6.0', '2022-03-21 18:49:05', 65, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0321.default', '2022-03-21 18:49:05', 66, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 18:49:19\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0321.default/1/\n', '2022-03-21 18:49:19', 67, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hellonew.default', '2022-03-21 18:52:44', 68, 1, 'hellonew', 'default', '', '', '项目名称【hellonew】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hellonew.default, Build版本：V6.0', '2022-03-21 18:52:48', 69, 1, 'hellonew', 'default', '', '', '项目名称【hellonew】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hellonew.default', '2022-03-21 18:52:48', 70, 1, 'hellonew', 'default', '', '', '项目名称【hellonew】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 18:53:02\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hellonew.default/1/\n', '2022-03-21 18:53:02', 71, 1, 'hellonew', 'default', '', '', '项目名称【hellonew】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hellonew3.default', '2022-03-21 19:06:31', 72, 1, 'hellonew3', 'default', '', '', '项目名称【hellonew3】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hellonew3.default, Build版本：V6.0', '2022-03-21 19:06:40', 73, 1, 'hellonew3', 'default', '', '', '项目名称【hellonew3】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hellonew3.default', '2022-03-21 19:06:40', 74, 1, 'hellonew3', 'default', '', '', '项目名称【hellonew3】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 19:06:58\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hellonew3.default/1/\n', '2022-03-21 19:06:58', 75, 1, 'hellonew3', 'default', '', '', '项目名称【hellonew3】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hellonew4.default', '2022-03-21 19:09:15', 76, 1, 'hellonew4', 'default', '', '', '项目名称【hellonew4】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hellonew4.default, Build版本：V6.0', '2022-03-21 19:09:25', 77, 1, 'hellonew4', 'default', '', '', '项目名称【hellonew4】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hellonew4.default', '2022-03-21 19:09:25', 78, 1, 'hellonew4', 'default', '', '', '项目名称【hellonew4】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 19:09:43\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hellonew4.default/1/\n', '2022-03-21 19:09:43', 79, 1, 'hellonew4', 'default', '', '', '项目名称【hellonew4】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hellonew8.default', '2022-03-21 19:59:43', 80, 1, 'hellonew8', 'default', '', '', '项目名称【hellonew8】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hellonew8.default, Build版本：V6.0', '2022-03-21 19:59:54', 81, 1, 'hellonew8', 'default', '', '', '项目名称【hellonew8】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hellonew8.default', '2022-03-21 19:59:54', 82, 1, 'hellonew8', 'default', '', '', '项目名称【hellonew8】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/21 20:00:08\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hellonew8.default/1/\n', '2022-03-21 20:00:08', 83, 1, 'hellonew8', 'default', '', '', '项目名称【hellonew8】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hellonew8.default', '2022-03-22 12:20:06', 84, 1, 'hellonew8', 'default', '', '', '项目名称【hellonew8】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: 111new.default', '2022-03-22 12:20:11', 85, 1, '111new', 'default', '', '', '项目名称【111new】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hellonew4.default', '2022-03-22 12:20:17', 86, 1, 'hellonew4', 'default', '', '', '项目名称【hellonew4】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hellonew3.default', '2022-03-22 12:20:23', 87, 1, 'hellonew3', 'default', '', '', '项目名称【hellonew3】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hellonew.default', '2022-03-22 12:20:29', 88, 1, 'hellonew', 'default', '', '', '项目名称【hellonew】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0321.default', '2022-03-22 12:20:35', 89, 1, 'hello0321', 'default', '', '', '项目名称【hello0321】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0322.default', '2022-03-22 12:21:59', 90, 1, 'hello0322', 'default', '', '', '项目名称【hello0322】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0322.default, Build版本：V6.0', '2022-03-22 12:22:10', 91, 1, 'hello0322', 'default', '', '', '项目名称【hello0322】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0322.default', '2022-03-22 12:22:10', 92, 1, 'hello0322', 'default', '', '', '项目名称【hello0322】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/22 12:22:24\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0322.default/1/\n', '2022-03-22 12:22:25', 93, 1, 'hello0322', 'default', '', '', '项目名称【hello0322】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0322new.default', '2022-03-22 14:33:40', 94, 1, 'hello0322new', 'default', '', '', '项目名称【hello0322new】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0322new.default, Build版本：V6.0', '2022-03-22 14:33:45', 95, 1, 'hello0322new', 'default', '', '', '项目名称【hello0322new】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0322new.default', '2022-03-22 14:33:45', 96, 1, 'hello0322new', 'default', '', '', '项目名称【hello0322new】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/22 14:34:10\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0322new.default/1/\n', '2022-03-22 14:34:11', 97, 1, 'hello0322new', 'default', '', '', '项目名称【hello0322new】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0322new.default', '2022-03-22 14:46:34', 98, 1, 'hello0322new', 'default', '', '', '项目名称【hello0322new】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0322.default', '2022-03-22 14:46:41', 99, 1, 'hello0322', 'default', '', '', '项目名称【hello0322】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: 0322hello.default', '2022-03-22 14:47:14', 100, 1, '0322hello', 'default', '', '', '项目名称【0322hello】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 0322hello.default, Build版本：V6.0', '2022-03-22 14:47:22', 101, 1, '0322hello', 'default', '', '', '项目名称【0322hello】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: 0322hello.default', '2022-03-22 14:47:22', 102, 1, '0322hello', 'default', '', '', '项目名称【0322hello】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/22 14:48:00\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/0322hello.default/1/\n', '2022-03-22 14:48:00', 103, 1, '0322hello', 'default', '', '', '项目名称【0322hello】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0325.default', '2022-03-25 09:59:00', 104, 1, 'hello0325', 'default', '', '', '项目名称【hello0325】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0325.default, Build版本：V6.0', '2022-03-25 09:59:11', 105, 1, 'hello0325', 'default', '', '', '项目名称【hello0325】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0325.default', '2022-03-25 09:59:11', 106, 1, 'hello0325', 'default', '', '', '项目名称【hello0325】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 09:59:58\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/hello0325.default/1/\n', '2022-03-25 09:59:59', 107, 1, 'hello0325', 'default', '', '', '项目名称【hello0325】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testmq1.default', '2022-03-25 10:11:34', 108, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 testmq1.default, Build版本：V6.0', '2022-03-25 10:11:41', 109, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testmq1.default', '2022-03-25 10:11:42', 110, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 10:12:16\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/testmq1.default/1/\n', '2022-03-25 10:12:16', 111, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testmq1.default', '2022-03-25 11:00:58', 112, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testmq1.default', '2022-03-25 11:01:37', 113, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 testmq1.default, Build版本：V6.0', '2022-03-25 11:01:55', 114, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testmq1.default', '2022-03-25 11:01:55', 115, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 11:02:25\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/testmq1.default/1/\n', '2022-03-25 11:02:25', 116, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testmq2.default', '2022-03-25 11:08:01', 117, 1, 'testmq2', 'default', '', '', '项目名称【testmq2】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 testmq2.default, Build版本：V6.0', '2022-03-25 11:08:12', 118, 1, 'testmq2', 'default', '', '', '项目名称【testmq2】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testmq2.default', '2022-03-25 11:08:12', 119, 1, 'testmq2', 'default', '', '', '项目名称【testmq2】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 11:08:46\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/testmq2.default/1/\n', '2022-03-25 11:08:47', 120, 1, 'testmq2', 'default', '', '', '项目名称【testmq2】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testmq3.default', '2022-03-25 11:15:57', 121, 1, 'testmq3', 'default', '', '', '项目名称【testmq3】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 testmq3.default, Build版本：V6.0', '2022-03-25 11:16:04', 122, 1, 'testmq3', 'default', '', '', '项目名称【testmq3】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testmq3.default', '2022-03-25 11:16:04', 123, 1, 'testmq3', 'default', '', '', '项目名称【testmq3】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 11:16:43\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/testmq3.default/1/\n', '2022-03-25 11:16:43', 124, 1, 'testmq3', 'default', '', '', '项目名称【testmq3】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: jkhosttest1.default', '2022-03-25 12:24:30', 125, 1, 'jkhosttest1', 'default', '', '', '项目名称【jkhosttest1】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 jkhosttest1.default, Build版本：V6.0', '2022-03-25 12:24:37', 126, 1, 'jkhosttest1', 'default', '', '', '项目名称【jkhosttest1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: jkhosttest1.default', '2022-03-25 12:24:38', 127, 1, 'jkhosttest1', 'default', '', '', '项目名称【jkhosttest1】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 12:25:59\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/jkhosttest1.default/1/\n', '2022-03-25 12:25:59', 128, 1, 'jkhosttest1', 'default', '', '', '项目名称【jkhosttest1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test2.default', '2022-03-25 13:35:40', 129, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test2.default, Build版本：V6.0', '2022-03-25 13:35:46', 130, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test2.default', '2022-03-25 13:35:46', 131, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 13:36:18\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/test2.default/1/\n', '2022-03-25 13:36:18', 132, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test2.default', '2022-03-25 14:05:47', 133, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: jkhosttest1.default', '2022-03-25 14:05:54', 134, 1, 'jkhosttest1', 'default', '', '', '项目名称【jkhosttest1】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testmq3.default', '2022-03-25 14:06:00', 135, 1, 'testmq3', 'default', '', '', '项目名称【testmq3】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testmq2.default', '2022-03-25 14:06:06', 136, 1, 'testmq2', 'default', '', '', '项目名称【testmq2】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testmq1.default', '2022-03-25 14:06:14', 137, 1, 'testmq1', 'default', '', '', '项目名称【testmq1】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0325.default', '2022-03-25 14:06:26', 138, 1, 'hello0325', 'default', '', '', '项目名称【hello0325】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test1.default', '2022-03-25 14:07:56', 139, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test1.default, Build版本：V6.0', '2022-03-25 14:08:16', 140, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test1.default', '2022-03-25 14:08:16', 141, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 14:08:48\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/test1.default/1/\n', '2022-03-25 14:08:48', 142, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test2.default', '2022-03-25 14:15:49', 143, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test2.default, Build版本：V6.0', '2022-03-25 14:15:56', 144, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test2.default', '2022-03-25 14:15:56', 145, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 14:16:23\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/test2.default/1/\n', '2022-03-25 14:16:23', 146, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test3.default', '2022-03-25 14:50:39', 147, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test3.default, Build版本：V6.0', '2022-03-25 14:50:47', 148, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test3.default', '2022-03-25 14:50:47', 149, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 14:51:19\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://localhost:8080/job/test3.default/1/\n', '2022-03-25 14:51:20', 150, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test4.default', '2022-03-25 14:59:45', 151, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test4.default', '2022-03-25 15:00:17', 152, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test4.default, Build版本：V6.0', '2022-03-25 15:00:36', 153, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test4.default', '2022-03-25 15:00:36', 154, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/25 15:01:10\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/test4.default/1/\n', '2022-03-25 15:01:10', 155, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test4.default', '2022-03-26 10:02:33', 156, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test3.default', '2022-03-26 10:02:39', 157, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test2.default', '2022-03-26 10:02:46', 158, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test1.default', '2022-03-26 10:02:53', 159, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: 0322hello.default', '2022-03-26 10:03:00', 160, 1, '0322hello', 'default', '', '', '项目名称【0322hello】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0326.default', '2022-03-26 10:04:20', 161, 1, 'hello0326', 'default', '', '', '项目名称【hello0326】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0326.default, Build版本：V6.0', '2022-03-26 10:04:30', 162, 1, 'hello0326', 'default', '', '', '项目名称【hello0326】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0326.default', '2022-03-26 10:04:30', 163, 1, 'hello0326', 'default', '', '', '项目名称【hello0326】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/26 10:05:08\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/hello0326.default/1/\n', '2022-03-26 10:05:09', 164, 1, 'hello0326', 'default', '', '', '项目名称【hello0326】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test1.default', '2022-03-26 11:01:30', 165, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test1.default, Build版本：V6.0', '2022-03-26 11:02:04', 166, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test1.default', '2022-03-26 11:02:04', 167, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/26 11:02:38\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/test1.default/1/\n', '2022-03-26 11:02:38', 168, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test2.default', '2022-03-26 11:33:03', 169, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test2.default, Build版本：V6.0', '2022-03-26 11:33:11', 170, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test2.default', '2022-03-26 11:33:11', 171, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/26 11:33:41\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/test2.default/1/\n', '2022-03-26 11:33:42', 172, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test3.default', '2022-03-26 11:48:51', 173, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test3.default, Build版本：V6.0', '2022-03-26 11:49:03', 174, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test3.default', '2022-03-26 11:49:03', 175, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/26 11:49:36\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/test3.default/1/\n', '2022-03-26 11:49:36', 176, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test4.default', '2022-03-26 12:50:21', 177, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test4.default, Build版本：V6.0', '2022-03-26 13:18:14', 178, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test4.default', '2022-03-26 13:18:14', 179, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/26 13:18:49\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/test4.default/1/\n', '2022-03-26 13:18:49', 180, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test4.default', '2022-03-26 13:21:44', 181, 1, 'test4', 'default', '', '', '项目名称【test4】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test8.default', '2022-03-26 13:22:21', 182, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test8.default, Build版本：V6.0', '2022-03-26 13:22:24', 183, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test8.default', '2022-03-26 13:22:24', 184, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/26 13:23:03\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/test8.default/1/\n', '2022-03-26 13:23:03', 185, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0327.default', '2022-03-27 19:25:55', 186, 1, 'hello0327', 'default', '', '', '项目名称【hello0327】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0327.default, Build版本：V6.0', '2022-03-27 19:25:59', 187, 1, 'hello0327', 'default', '', '', '项目名称【hello0327】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0327.default', '2022-03-27 19:25:59', 188, 1, 'hello0327', 'default', '', '', '项目名称【hello0327】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/27 19:26:45\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/hello0327.default/1/\n', '2022-03-27 19:26:46', 189, 1, 'hello0327', 'default', '', '', '项目名称【hello0327】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test99.default', '2022-03-27 19:29:54', 190, 1, 'test99', 'default', '', '', '项目名称【test99】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 test99.default, Build版本：V6.0', '2022-03-27 19:29:59', 191, 1, 'test99', 'default', '', '', '项目名称【test99】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test99.default', '2022-03-27 19:29:59', 192, 1, 'test99', 'default', '', '', '项目名称【test99】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/27 19:30:39\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/test99.default/1/\n', '2022-03-27 19:30:40', 193, 1, 'test99', 'default', '', '', '项目名称【test99】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test99.default', '2022-03-28 10:01:49', 194, 1, 'test99', 'default', '', '', '项目名称【test99】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0327.default', '2022-03-28 10:01:58', 195, 1, 'hello0327', 'default', '', '', '项目名称【hello0327】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test8.default', '2022-03-28 10:02:04', 196, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test3.default', '2022-03-28 10:02:11', 197, 1, 'test3', 'default', '', '', '项目名称【test3】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test2.default', '2022-03-28 10:02:18', 198, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test1.default', '2022-03-28 10:02:25', 199, 1, 'test1', 'default', '', '', '项目名称【test1】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0326.default', '2022-03-28 10:02:33', 200, 1, 'hello0326', 'default', '', '', '项目名称【hello0326】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0328.default', '2022-03-28 10:05:40', 201, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0328.default, Build版本：V6.0', '2022-03-28 10:06:33', 202, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0328.default', '2022-03-28 10:06:33', 203, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/28 10:07:11\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/hello0328.default/1/\n', '2022-03-28 10:07:11', 204, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0328.default', '2022-03-28 11:33:50', 205, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0328.default', '2022-03-28 11:37:52', 206, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0328.default, Build版本：V6.0', '2022-03-28 11:38:08', 207, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0328.default', '2022-03-28 11:38:08', 208, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/28 11:38:38\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/hello0328.default/1/\n', '2022-03-28 11:38:39', 209, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0328.default', '2022-03-28 11:39:11', 210, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0328.default', '2022-03-28 11:42:00', 211, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0328.default, Build版本：V6.0', '2022-03-28 11:42:04', 212, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0328.default', '2022-03-28 11:42:04', 213, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/28 11:42:34\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/hello0328.default/1/\n', '2022-03-28 11:42:34', 214, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0328.default', '2022-03-28 12:05:31', 215, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0328.default', '2022-03-28 12:06:02', 216, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0328.default, Build版本：V6.0', '2022-03-28 12:06:07', 217, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0328.default', '2022-03-28 12:06:07', 218, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/28 12:06:40\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/hello0328.default/1/\n', '2022-03-28 12:06:40', 219, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0328.default', '2022-03-28 12:24:55', 220, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0328.default', '2022-03-28 12:25:44', 221, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0328.default, Build版本：V6.0', '2022-03-28 12:25:50', 222, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0328.default', '2022-03-28 12:25:50', 223, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/28 12:26:20\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/hello0328.default/1/\n', '2022-03-28 12:26:21', 224, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0328.default', '2022-03-28 12:31:09', 225, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0328.default', '2022-03-28 12:31:41', 226, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0328.default, Build版本：V6.0', '2022-03-28 12:31:44', 227, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0328.default', '2022-03-28 12:31:44', 228, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/28 12:32:41\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8080/job/hello0328.default/1/\n', '2022-03-28 12:32:42', 229, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0329.default', '2022-03-29 13:56:00', 230, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0329.default, Build版本：V6.0', '2022-03-29 13:56:05', 231, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0329.default', '2022-03-29 13:56:05', 232, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/29 13:56:56\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0329.default/1/\n', '2022-03-29 13:56:57', 233, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0329.default', '2022-03-29 13:57:57', 234, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0329.default', '2022-03-29 15:21:14', 235, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0329.default, Build版本：V6.0', '2022-03-29 15:21:18', 236, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0329.default', '2022-03-29 15:21:18', 237, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/03/29 15:21:54\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0329.default/1/\n', '2022-03-29 15:21:55', 238, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0329.default', '2022-03-30 17:55:35', 239, 1, 'hello0329', 'default', '', '', '项目名称【hello0329】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0328.default', '2022-04-03 13:53:12', 240, 1, 'hello0328', 'default', '', '', '项目名称【hello0328】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: cmd.default', '2022-04-03 13:53:20', 241, 1, 'cmd', 'default', '', '', '项目名称【cmd】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0403.default', '2022-04-03 13:54:22', 242, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0403.default, Build版本：V6.0', '2022-04-03 14:03:49', 243, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0403.default', '2022-04-03 14:03:50', 244, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/03 14:04:38\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0403.default/1/\n', '2022-04-03 14:04:39', 245, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0403.default', '2022-04-03 14:13:59', 246, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0403.default', '2022-04-03 14:14:33', 247, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0403.default, Build版本：V6.0', '2022-04-03 14:14:37', 248, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0403.default', '2022-04-03 14:14:37', 249, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/03 14:15:12\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0403.default/1/\n', '2022-04-03 14:15:12', 250, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0403.default', '2022-04-03 14:21:02', 251, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0403.default', '2022-04-03 14:21:41', 252, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0403.default, Build版本：V6.0', '2022-04-03 14:21:45', 253, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0403.default', '2022-04-03 14:21:45', 254, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/03 14:22:28\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0403.default/1/\n', '2022-04-03 14:22:28', 255, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Reboot', '重启容器: hello0403.default, 容器名称: hello0403-5fd8dd7547-dzkvd', '2022-04-03 14:29:09', 256, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【重启容器】', 2);
INSERT INTO `notices` VALUES ('Reboot', '重启容器: hello0403.default, 容器名称: hello0403-5fd8dd7547-fkbrm', '2022-04-03 14:33:06', 257, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【重启容器】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: yamlview.default', '2022-04-03 18:59:20', 258, 1, 'yamlview', 'default', '', '', '项目名称【yamlview】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: hello0403.default', '2022-04-03 19:23:43', 259, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testingress7.default', '2022-04-03 19:26:37', 260, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testingress7.default', '2022-04-03 19:26:59', 261, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testingress7.default', '2022-04-03 19:28:51', 262, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello8.default', '2022-04-03 19:30:25', 263, 1, 'hello8', 'default', '', '', '项目名称【hello8】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello8.default', '2022-04-03 19:30:31', 264, 1, 'hello8', 'default', '', '', '项目名称【hello8】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello8.default', '2022-04-03 19:36:14', 265, 1, 'hello8', 'default', '', '', '项目名称【hello8】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hellotest.default', '2022-04-03 19:38:35', 266, 1, 'hellotest', 'default', '', '', '项目名称【hellotest】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hellotest.default', '2022-04-03 19:38:46', 267, 1, 'hellotest', 'default', '', '', '项目名称【hellotest】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: hellotest.default', '2022-04-03 19:41:35', 268, 1, 'hellotest', 'default', '', '', '项目名称【hellotest】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hellotest.default', '2022-04-03 19:43:08', 269, 1, 'hellotest', 'default', '', '', '项目名称【hellotest】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testingress7.default', '2022-04-03 19:43:56', 270, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testingress7.default', '2022-04-03 19:44:11', 271, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: testingress7.default', '2022-04-03 19:44:21', 272, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test8.default', '2022-04-03 19:57:55', 273, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: test8.default', '2022-04-03 19:58:02', 274, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: test8.default', '2022-04-03 20:01:06', 275, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test8.default', '2022-04-04 12:02:06', 276, 1, 'test8', 'default', '', '', '项目名称【test8】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testingress7.default', '2022-04-04 12:02:12', 277, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0403.default', '2022-04-04 12:02:28', 278, 1, 'hello0403', 'default', '', '', '项目名称【hello0403】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0404.default', '2022-04-04 12:04:11', 279, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0404.default', '2022-04-04 12:06:58', 280, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0404.default', '2022-04-04 12:08:38', 281, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0404.default', '2022-04-04 12:12:18', 282, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0404.default, Build版本：V6.0', '2022-04-04 12:12:31', 283, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0404.default', '2022-04-04 12:12:31', 284, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: hello0404.default', '2022-04-04 12:13:00', 285, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/04 12:13:06\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0404.default/1/\n', '2022-04-04 12:13:06', 286, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0404.default', '2022-04-04 12:24:36', 287, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: yamlview.default', '2022-04-04 12:24:44', 288, 1, 'yamlview', 'default', '', '', '项目名称【yamlview】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0404.default', '2022-04-04 12:29:55', 289, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0404.default, Build版本：V6.0', '2022-04-04 12:30:00', 290, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0404.default', '2022-04-04 12:30:00', 291, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: hello0404.default', '2022-04-04 12:30:17', 292, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/04 12:30:35\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0404.default/1/\n', '2022-04-04 12:30:35', 293, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0404.default', '2022-04-04 12:33:10', 294, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0404.default', '2022-04-04 12:33:42', 295, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0404.default, Build版本：V6.0', '2022-04-04 12:33:46', 296, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0404.default', '2022-04-04 12:33:46', 297, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: hello0404.default', '2022-04-04 12:34:09', 298, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/04 12:34:21\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0404.default/1/\n', '2022-04-04 12:34:22', 299, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0404.default', '2022-04-04 12:39:32', 300, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0404.default', '2022-04-04 12:41:51', 301, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0404.default, Build版本：V6.0', '2022-04-04 12:41:54', 302, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0404.default', '2022-04-04 12:41:54', 303, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/04 12:42:26\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0404.default/1/\n', '2022-04-04 12:42:27', 304, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: yamlview.default', '2022-04-04 12:43:03', 305, 1, 'yamlview', 'default', '', '', '项目名称【yamlview】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: hello0404.default', '2022-04-04 12:43:45', 306, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0404.default', '2022-04-04 12:54:43', 307, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: hello0404.default', '2022-04-04 12:55:20', 308, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 hello0404.default, Build版本：V6.0', '2022-04-04 12:55:27', 309, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: hello0404.default', '2022-04-04 12:55:28', 310, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/04 12:56:04\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/hello0404.default/1/\n', '2022-04-04 12:56:05', 311, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: hello0404.default', '2022-04-04 12:57:34', 312, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testingress7.default', '2022-04-04 14:51:32', 313, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 testingress7.default, Build版本：V6.0', '2022-04-04 14:51:39', 314, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testingress7.default', '2022-04-04 14:51:39', 315, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/04 14:52:21\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/testingress7.default/1/\n', '2022-04-04 14:52:22', 316, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: testingress7.default', '2022-04-04 15:05:37', 317, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: ingress8.default', '2022-04-04 19:42:14', 318, 1, 'ingress8', 'default', '', '', '项目名称【ingress8】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 ingress8.default, Build版本：V6.0', '2022-04-04 19:42:18', 319, 1, 'ingress8', 'default', '', '', '项目名称【ingress8】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: ingress8.default', '2022-04-04 19:42:18', 320, 1, 'ingress8', 'default', '', '', '项目名称【ingress8】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/04 19:43:03\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/ingress8.default/1/\n', '2022-04-04 19:43:03', 321, 1, 'ingress8', 'default', '', '', '项目名称【ingress8】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testjeager.default', '2022-04-06 18:25:15', 322, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 testjeager.default, Build版本：V7.0', '2022-04-06 18:25:20', 323, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testjeager.default', '2022-04-06 18:25:20', 324, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V7.0\nBuild时间: 2022/04/06 18:26:32\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/testjeager.default/1/\n', '2022-04-06 18:26:32', 325, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: ingress8.default', '2022-04-06 18:26:38', 326, 1, 'ingress8', 'default', '', '', '项目名称【ingress8】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testingress7.default', '2022-04-06 18:26:45', 327, 1, 'testingress7', 'default', '', '', '项目名称【testingress7】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: hello0404.default', '2022-04-06 18:26:53', 328, 1, 'hello0404', 'default', '', '', '项目名称【hello0404】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testjeager.default', '2022-04-06 18:33:29', 329, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testjeager.default', '2022-04-06 18:34:07', 330, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 testjeager.default, Build版本：V8.0', '2022-04-06 18:34:11', 331, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: testjeager.default', '2022-04-06 18:34:11', 332, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V8.0\nBuild时间: 2022/04/06 18:34:47\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/testjeager.default/1/\n', '2022-04-06 18:34:48', 333, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Gateway', '初始化 Ingress \n 应用: testjeager.default', '2022-04-06 18:40:02', 334, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【网关调整】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: wechattest.default', '2022-04-08 18:44:14', 335, 1, 'wechattest', 'default', '', '', '项目名称【wechattest】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 wechattest.default, Build版本：V8.0', '2022-04-08 18:44:19', 336, 1, 'wechattest', 'default', '', '', '项目名称【wechattest】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: wechattest.default', '2022-04-08 18:44:19', 337, 1, 'wechattest', 'default', '', '', '项目名称【wechattest】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V8.0\nBuild时间: 2022/04/08 18:45:13\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/wechattest.default/1/\n', '2022-04-08 18:45:13', 338, 1, 'wechattest', 'default', '', '', '项目名称【wechattest】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: wechattest.default', '2022-04-08 20:11:59', 339, 1, 'wechattest', 'default', '', '', '项目名称【wechattest】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: clouddemo.default', '2022-04-11 11:29:21', 340, 1, 'clouddemo', 'default', '', '', '项目名称【clouddemo】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 11:31:05', 341, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 11:32:34', 342, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 11:34:14', 343, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 11:34:49', 344, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 11:37:07', 345, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 11:37:51', 346, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 11:38:48', 347, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 11:44:11', 348, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 11:45:48', 349, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 11:47:55', 350, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 11:49:25', 351, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 11:50:20', 352, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 11:51:57', 353, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 11:52:55', 354, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 11:57:28', 355, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 12:08:31', 356, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 12:10:17', 357, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 12:37:37', 358, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 12:38:58', 359, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test.default', '2022-04-11 12:40:11', 360, 1, 'test', 'default', '', '', '项目名称【test】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test2.default', '2022-04-11 12:42:08', 361, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test2.default', '2022-04-11 12:44:31', 362, 1, 'test2', 'default', '', '', '项目名称【test2】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test.default', '2022-04-11 12:44:39', 363, 1, 'test', 'default', '', '', '项目名称【test】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 12:44:46', 364, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 13:44:43', 365, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 13:48:38', 366, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: orderservice.default', '2022-04-11 13:49:52', 367, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 orderservice.default, Build版本：V2.0', '2022-04-11 13:50:08', 368, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: orderservice.default', '2022-04-11 13:50:08', 369, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V2.0\nBuild时间: 2022/04/11 13:52:33\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/orderservice.default/1/\n', '2022-04-11 13:52:33', 370, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: test.default', '2022-04-11 14:02:32', 371, 1, 'test', 'default', '', '', '项目名称【test】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: testold.default', '2022-04-11 14:03:51', 372, 1, 'testold', 'default', '', '', '项目名称【testold】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testold.default', '2022-04-11 14:25:31', 373, 1, 'testold', 'default', '', '', '项目名称【testold】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: test.default', '2022-04-11 14:25:39', 374, 1, 'test', 'default', '', '', '项目名称【test】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: orderservice.default', '2022-04-11 14:25:46', 375, 1, 'orderservice', 'default', '', '', '项目名称【orderservice】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: order-service.default', '2022-04-11 14:26:28', 376, 1, 'order-service', 'default', '', '', '项目名称【order-service】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 order-service.default, Build版本：V2.0', '2022-04-11 14:26:49', 377, 1, 'order-service', 'default', '', '', '项目名称【order-service】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: order-service.default', '2022-04-11 14:26:49', 378, 1, 'order-service', 'default', '', '', '项目名称【order-service】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V2.0\nBuild时间: 2022/04/11 14:27:54\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/order-service.default/1/\n', '2022-04-11 14:27:55', 379, 1, 'order-service', 'default', '', '', '项目名称【order-service】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: user-service.default', '2022-04-11 14:30:43', 380, 1, 'user-service', 'default', '', '', '项目名称【user-service】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 user-service.default, Build版本：V2.0', '2022-04-11 14:30:48', 381, 1, 'user-service', 'default', '', '', '项目名称【user-service】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: user-service.default', '2022-04-11 14:30:48', 382, 1, 'user-service', 'default', '', '', '项目名称【user-service】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V2.0\nBuild时间: 2022/04/11 14:31:51\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/user-service.default/1/\n', '2022-04-11 14:31:51', 383, 1, 'user-service', 'default', '', '', '项目名称【user-service】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 13:53:08', 384, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: user-service.default', '2022-04-12 13:53:24', 385, 1, 'user-service', 'default', '', '', '项目名称【user-service】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: order-service.default', '2022-04-12 13:53:33', 386, 1, 'order-service', 'default', '', '', '项目名称【order-service】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: testjeager.default', '2022-04-12 13:53:41', 387, 1, 'testjeager', 'default', '', '', '项目名称【testjeager】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 13:54:10', 388, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 13:54:10', 389, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 13:55:56\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 13:55:56', 390, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 14:28:46', 391, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 14:44:50', 392, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V2.0', '2022-04-12 14:45:00', 393, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 14:45:00', 394, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V2.0\nBuild时间: 2022/04/12 14:45:12\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 14:45:12', 395, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 14:47:46', 396, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 14:51:33', 397, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V3.0', '2022-04-12 14:51:37', 398, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 14:51:37', 399, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V3.0\nBuild时间: 2022/04/12 14:51:53\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 14:51:53', 400, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 14:55:54', 401, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 15:03:09', 402, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V4.0', '2022-04-12 15:03:12', 403, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 15:03:12', 404, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V4.0\nBuild时间: 2022/04/12 15:03:28\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 15:03:29', 405, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 16:43:33', 406, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 16:44:08', 407, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V5.0', '2022-04-12 16:44:11', 408, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 16:44:11', 409, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V5.0\nBuild时间: 2022/04/12 16:44:27\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 16:44:28', 410, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 16:56:19', 411, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 16:57:13', 412, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V5.0', '2022-04-12 16:57:16', 413, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 16:57:17', 414, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V5.0\nBuild时间: 2022/04/12 16:57:32\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 16:57:33', 415, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 16:59:30', 416, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 17:00:02', 417, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V5.0', '2022-04-12 17:00:05', 418, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 17:00:05', 419, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V5.0\nBuild时间: 2022/04/12 17:00:20\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 17:00:21', 420, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 18:30:36', 421, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 18:32:18', 422, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 18:32:22', 423, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 18:32:22', 424, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 18:32:38\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 18:32:39', 425, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 18:34:45', 426, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 18:35:24', 427, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V5.0', '2022-04-12 18:35:41', 428, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 18:35:41', 429, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V5.0\nBuild时间: 2022/04/12 18:35:56\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 18:35:57', 430, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 18:41:30', 431, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 18:41:54', 432, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V6.0', '2022-04-12 18:42:05', 433, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 18:42:05', 434, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V6.0\nBuild时间: 2022/04/12 18:42:20\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 18:42:21', 435, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 18:51:51', 436, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 18:52:15', 437, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V7.0', '2022-04-12 18:52:18', 438, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 18:52:18', 439, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V7.0\nBuild时间: 2022/04/12 18:52:32\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 18:52:32', 440, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 18:56:26', 441, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 18:56:53', 442, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V8.0', '2022-04-12 18:56:57', 443, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 18:56:57', 444, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V8.0\nBuild时间: 2022/04/12 18:57:12\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 18:57:13', 445, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 19:03:54', 446, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 19:04:23', 447, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V9.0', '2022-04-12 19:04:26', 448, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 19:04:26', 449, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V9.0\nBuild时间: 2022/04/12 19:04:44\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 19:04:44', 450, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 19:13:28', 451, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 19:14:34', 452, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V10.0', '2022-04-12 19:14:42', 453, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 19:14:42', 454, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V10.0\nBuild时间: 2022/04/12 19:14:59\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 19:15:00', 455, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 19:17:55', 456, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 19:18:18', 457, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 19:18:21', 458, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 19:18:22', 459, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 19:18:37\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 19:18:38', 460, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 19:55:57', 461, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 20:00:17', 462, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 20:00:20', 463, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 20:00:20', 464, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 20:00:38\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 20:00:39', 465, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 20:36:24', 466, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 20:36:58', 467, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 20:37:01', 468, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 20:37:01', 469, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 20:37:19\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 20:37:19', 470, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 20:45:16', 471, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 20:45:48', 472, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 20:45:53', 473, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 20:45:53', 474, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 20:46:17\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 20:46:17', 475, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 20:50:51', 476, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 20:51:15', 477, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 20:51:21', 478, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 20:51:21', 479, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 20:51:35\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 20:51:35', 480, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 20:53:47', 481, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 20:54:13', 482, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 20:54:41', 483, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 20:54:41', 484, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 20:57:01\n构建状态： FAILURE\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 20:57:02', 485, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 21:01:51', 486, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 21:02:18', 487, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 21:02:22', 488, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 21:02:22', 489, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 21:03:29\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 21:03:29', 490, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 21:23:17', 491, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 21:24:00', 492, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 21:24:07', 493, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 21:24:08', 494, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V1.0\nBuild时间: 2022/04/12 21:24:21\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 21:24:22', 495, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 21:24:38', 496, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 21:25:08', 497, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V1.0', '2022-04-12 21:25:48', 498, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 21:25:48', 499, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Delete', '项目删除: seckill-admin.default', '2022-04-12 21:26:46', 500, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【删除应用】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-admin.default', '2022-04-12 21:56:40', 501, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-admin.default, Build版本：V11.0', '2022-04-12 21:56:43', 502, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-admin.default', '2022-04-12 21:56:43', 503, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V11.0\nBuild时间: 2022/04/12 21:58:27\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-admin.default/1/\n', '2022-04-12 21:58:27', 504, 1, 'seckill-admin', 'default', '', '', '项目名称【seckill-admin】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-app.default', '2022-04-12 22:01:49', 505, 1, 'seckill-app', 'default', '', '', '项目名称【seckill-app】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-app.default, Build版本：V11.0', '2022-04-12 22:01:52', 506, 1, 'seckill-app', 'default', '', '', '项目名称【seckill-app】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-app.default', '2022-04-12 22:01:52', 507, 1, 'seckill-app', 'default', '', '', '项目名称【seckill-app】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V11.0\nBuild时间: 2022/04/12 22:03:31\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-app.default/1/\n', '2022-04-12 22:03:32', 508, 1, 'seckill-app', 'default', '', '', '项目名称【seckill-app】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Apply', '项目提交审核: seckill-core.default', '2022-04-12 22:04:44', 509, 1, 'seckill-core', 'default', '', '', '项目名称【seckill-core】命名空间【default】已操作【申请应用】', 2);
INSERT INTO `notices` VALUES ('Build', '项目 seckill-core.default, Build版本：V11.0', '2022-04-12 22:04:48', 510, 1, 'seckill-core', 'default', '', '', '项目名称【seckill-core】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Audit', '项目审核通过: seckill-core.default', '2022-04-12 22:04:48', 511, 1, 'seckill-core', 'default', '', '', '项目名称【seckill-core】命名空间【default】已操作【审计应用】', 2);
INSERT INTO `notices` VALUES ('Build', '\n版本: V11.0\nBuild时间: 2022/04/12 22:06:24\n构建状态： SUCCESS\n操作人: kplcloud\n详情: http://192.168.145.139:8088/job/seckill-core.default/1/\n', '2022-04-12 22:06:24', 512, 1, 'seckill-core', 'default', '', '', '项目名称【seckill-core】命名空间【default】已操作【构建】', 2);
INSERT INTO `notices` VALUES ('Reboot', '重启容器: seckill-core.default, 容器名称: seckill-core-c7c9497cb-djpbb', '2022-04-12 22:47:14', 513, 1, 'seckill-core', 'default', '', '', '项目名称【seckill-core】命名空间【default】已操作【重启容器】', 2);
INSERT INTO `notices` VALUES ('Reboot', '重启容器: seckill-app.default, 容器名称: seckill-app-86c6965b79-hdqmb', '2022-04-12 22:47:57', 514, 1, 'seckill-app', 'default', '', '', '项目名称【seckill-app】命名空间【default】已操作【重启容器】', 2);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `created_at` datetime(0) DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu` tinyint(1) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 329 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('2019-07-12 18:18:25', 'dashboard', 1, 1, 'GET', 'Dashboard', 0, '/dashboard', '2019-07-29 15:42:38');
INSERT INTO `permissions` VALUES ('2019-07-12 18:21:44', 'desktop', 2, 1, 'GET', '工作台', 1, '/workplace', '2019-07-31 16:45:49');
INSERT INTO `permissions` VALUES ('2019-07-12 18:22:58', 'database', 3, 1, 'GET', '应用管理', 0, '/project', '2019-07-12 18:22:58');
INSERT INTO `permissions` VALUES ('2019-07-12 18:23:26', 'table', 4, 1, 'GET', '配置与存储', 0, '/conf', '2019-07-12 18:23:26');
INSERT INTO `permissions` VALUES ('2019-07-12 18:23:57', 'form', 5, 1, 'GET', '安全管理', 0, '/security', '2019-07-12 18:23:57');
INSERT INTO `permissions` VALUES ('2019-07-12 18:24:17', 'profile', 6, 1, 'GET', '模版管理', 0, '/template/list', '2019-07-17 17:22:17');
INSERT INTO `permissions` VALUES ('2019-07-15 16:53:33', 'idcard', 7, 1, 'GET', '平台管理', 0, '/system', '2019-07-15 17:37:28');
INSERT INTO `permissions` VALUES ('2019-07-12 18:26:47', 'tool', 9, 1, 'GET', '工具集', 0, '/tools', '2019-07-12 18:26:47');
INSERT INTO `permissions` VALUES ('2019-07-12 18:27:03', 'cloud-download-o', 10, 1, 'GET', '云市场', 0, '/markets', '2019-07-12 18:27:03');
INSERT INTO `permissions` VALUES ('2019-07-15 16:48:51', 'usergroup-delete', 12, 1, 'GET', '权限管理', 7, '/permission', '2019-07-15 17:43:54');
INSERT INTO `permissions` VALUES ('2019-07-15 16:50:06', '', 13, 0, 'GET', '权限列表', 12, '/permission/list', '2019-07-15 16:52:05');
INSERT INTO `permissions` VALUES ('2019-07-15 16:50:54', '', 14, 0, 'DELETE', '删除权限', 12, '/permission/{id:[0-9]+}', '2019-07-15 16:50:54');
INSERT INTO `permissions` VALUES ('2019-07-15 16:52:47', '', 15, 0, 'PUT', '更新权限', 12, '/permission/{id:[0-9]+}', '2019-07-15 16:52:47');
INSERT INTO `permissions` VALUES ('2019-07-15 16:53:12', '', 16, 0, 'POST', '创建权限', 12, '/system/permission', '2019-07-15 16:53:12');
INSERT INTO `permissions` VALUES ('2019-07-15 16:53:33', '', 17, 0, 'PUT', '移动权限', 12, '/permission/drag', '2019-07-15 16:54:50');
INSERT INTO `permissions` VALUES ('2019-07-15 16:54:07', '', 18, 0, 'GET', '拉取菜单', 2, '/permission/menu', '2019-07-29 14:08:44');
INSERT INTO `permissions` VALUES ('2019-07-15 17:37:52', 'user', 19, 1, 'GET', '用户管理', 7, '/member', '2019-07-15 17:43:48');
INSERT INTO `permissions` VALUES ('2019-07-15 17:43:38', 'usergroup-add', 20, 1, 'GET', '角色管理', 7, '/role', '2019-07-15 17:43:38');
INSERT INTO `permissions` VALUES ('2019-07-15 17:44:28', 'team', 21, 1, 'GET', '组管理', 7, '/group', '2019-07-15 17:44:28');
INSERT INTO `permissions` VALUES ('2019-07-15 17:44:56', 'sound', 22, 1, 'GET', '公告管理', 7, '/proclaim', '2019-07-19 14:48:31');
INSERT INTO `permissions` VALUES ('2019-07-15 17:52:41', '', 23, 0, 'POST', '登陆', 2, '/login', '2019-07-29 14:08:42');
INSERT INTO `permissions` VALUES ('2019-07-15 18:00:37', 'appstore-o', 24, 1, 'GET', '空间管理', 5, '/namespace', '2019-07-15 18:00:37');
INSERT INTO `permissions` VALUES ('2019-07-15 18:01:27', '', 25, 0, 'GET', '同步所有空间', 24, '/namespace/sync/all', '2019-07-15 18:01:27');
INSERT INTO `permissions` VALUES ('2019-07-15 18:02:46', '', 26, 0, 'GET', '空间列表', 24, '/namespace/{name}', '2019-07-15 18:02:46');
INSERT INTO `permissions` VALUES ('2019-07-15 18:03:27', '', 27, 0, 'PUT', '更新空间', 24, '/namespace/{name}', '2019-07-15 18:03:27');
INSERT INTO `permissions` VALUES ('2019-07-15 18:03:50', '', 28, 0, 'POST', '创建空间', 24, '/namespace', '2019-07-15 18:03:50');
INSERT INTO `permissions` VALUES ('2019-07-15 18:09:30', '', 29, 0, 'GET', '模版列表', 6, '/template', '2019-07-15 18:09:30');
INSERT INTO `permissions` VALUES ('2019-07-15 18:09:51', '', 30, 0, 'POST', '创建模版', 6, '/template', '2019-07-15 18:09:51');
INSERT INTO `permissions` VALUES ('2019-07-15 18:11:29', '', 31, 0, 'DELETE', '删除模版', 6, '/template/{id:[0-9]+}', '2019-07-15 18:11:29');
INSERT INTO `permissions` VALUES ('2019-07-15 18:12:29', '', 32, 0, 'PUT', '更新模版', 6, '/template/{id:[0-9]+}', '2019-07-15 18:12:29');
INSERT INTO `permissions` VALUES ('2019-07-15 18:15:39', '', 33, 0, 'GET', '模版详情', 6, '/template/{id:[0-9]+}', '2019-07-15 18:15:39');
INSERT INTO `permissions` VALUES ('2019-07-15 18:17:43', 'hdd', 34, 1, 'GET', '存储类', 4, '/storage/list', '2019-07-15 18:17:43');
INSERT INTO `permissions` VALUES ('2019-07-15 18:18:16', 'hdd', 35, 1, 'GET', '持久化存储卷声明', 4, '/pvc/list', '2019-07-15 18:18:16');
INSERT INTO `permissions` VALUES ('2019-07-15 18:18:53', '', 36, 0, 'GET', '同步所有存储类', 34, '/storageclass/sync/all', '2019-07-15 18:18:53');
INSERT INTO `permissions` VALUES ('2019-07-15 18:19:11', '', 37, 0, 'GET', '存储类详情', 34, '/storageclass/{name}', '2019-07-15 18:19:19');
INSERT INTO `permissions` VALUES ('2019-07-15 18:19:49', '', 38, 0, 'DELETE', '删除存储类', 34, '/storageclass/{name}', '2019-07-15 18:19:49');
INSERT INTO `permissions` VALUES ('2019-07-15 18:20:02', '', 39, 0, 'POST', '创建存储类', 34, '/storageclass', '2019-07-15 18:20:06');
INSERT INTO `permissions` VALUES ('2019-07-15 18:20:20', '', 40, 0, 'GET', '存储类列表', 34, '/storageclass', '2019-07-15 18:20:20');
INSERT INTO `permissions` VALUES ('2019-07-15 18:21:32', '', 41, 0, 'GET', '同步存储卷声明', 35, '/persistentvolumeclaim/{namespace}/sync', '2019-07-15 18:21:32');
INSERT INTO `permissions` VALUES ('2019-07-15 18:21:54', '', 42, 0, 'GET', '存储卷详情', 35, '/persistentvolumeclaim/{namespace}/pvc/{name}', '2019-07-15 18:21:54');
INSERT INTO `permissions` VALUES ('2019-07-15 18:22:07', '', 43, 0, 'DELETE', '删除存储卷', 35, '/persistentvolumeclaim/{namespace}/pvc/{name}', '2019-07-15 18:22:07');
INSERT INTO `permissions` VALUES ('2019-07-15 18:22:28', '', 44, 0, 'GET', '存储卷列表', 35, '/persistentvolumeclaim/{namespace}', '2019-07-15 18:22:49');
INSERT INTO `permissions` VALUES ('2019-07-15 18:26:40', '', 45, 0, 'POST', '创建组', 21, '/group', '2019-07-15 18:26:40');
INSERT INTO `permissions` VALUES ('2019-07-15 18:36:07', 'cloud', 46, 1, 'GET', '应用列表', 3, '/list', '2019-07-18 14:59:34');
INSERT INTO `permissions` VALUES ('2019-07-15 18:45:04', '', 47, 0, 'POST', '创建应用', 46, '/project/{namespace}', '2019-07-15 18:45:51');
INSERT INTO `permissions` VALUES ('2019-07-15 18:46:17', '', 48, 0, 'GET', '应用详情', 46, '/project/{namespace}/detail/{name}', '2019-07-15 18:46:17');
INSERT INTO `permissions` VALUES ('2019-07-15 18:46:45', '', 49, 0, 'PUT', '修改应用的git地址', 48, '/project/{namespace}/gitaddr/{name}', '2019-07-16 12:12:07');
INSERT INTO `permissions` VALUES ('2019-07-15 18:47:04', '', 50, 0, 'PUT', '修改应用的pomfile', 48, '/project/{namespace}/pomfile/{name}', '2019-07-16 12:12:14');
INSERT INTO `permissions` VALUES ('2019-07-15 18:48:49', '', 51, 0, 'GET', 'Pods详情', 48, '/pods/{namespace}/detail/{name}/pod/{podName}', '2019-07-15 18:48:49');
INSERT INTO `permissions` VALUES ('2019-07-15 18:49:09', '', 52, 0, 'GET', 'Pods内存及CPU数据', 48, '/pods/{namespace}/metrics/{name}', '2019-07-15 18:49:09');
INSERT INTO `permissions` VALUES ('2019-07-15 18:49:32', '', 53, 0, 'DELETE', '删除POD', 48, '/pods/{namespace}/delete/{name}/pod/{podName}', '2019-07-15 18:49:32');
INSERT INTO `permissions` VALUES ('2019-07-15 18:49:59', '', 54, 0, 'GET', '应用的POD列表', 48, '/pods/{namespace}/detail/{name}/pod', '2019-07-15 18:49:59');
INSERT INTO `permissions` VALUES ('2019-07-15 18:50:26', '', 55, 0, 'GET', '获取容器输出的日志', 48, '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}', '2019-07-15 18:50:26');
INSERT INTO `permissions` VALUES ('2019-07-15 18:50:49', '', 56, 0, 'GET', '下载容器日志', 48, '/pods/{namespace}/detail/{name}/logs/{podName}/container/{container}/download', '2019-07-15 18:50:49');
INSERT INTO `permissions` VALUES ('2019-07-15 18:52:06', '', 57, 0, 'GET', '应用的git 上的 tags列表', 48, '/git/tags/{namespace}/project/{name}', '2019-07-15 18:53:03');
INSERT INTO `permissions` VALUES ('2019-07-15 18:52:29', '', 58, 0, 'GET', '应用的git 上的branches列表', 48, '/git/branches/{namespace}/project/{name}', '2019-07-15 18:53:08');
INSERT INTO `permissions` VALUES ('2019-07-15 18:52:59', '', 59, 0, 'GET', '应用的Dockerfile文件信息', 48, '/git/dockerfile/{namespace}/project/{name}', '2019-07-15 18:52:59');
INSERT INTO `permissions` VALUES ('2019-07-15 18:54:08', 'codepen', 60, 1, 'GET', '服务发现与负载', 3, '/discovery/services/list', '2019-07-15 18:54:08');
INSERT INTO `permissions` VALUES ('2019-07-15 18:54:37', '', 61, 0, 'DELETE', '删除Service', 60, '/discovery/{namespace}/services/{serviceName}', '2019-07-15 18:54:37');
INSERT INTO `permissions` VALUES ('2019-07-15 18:54:58', '', 62, 0, 'GET', 'Service详情', 60, '/discovery/{namespace}/services/{serviceName}', '2019-07-15 18:54:58');
INSERT INTO `permissions` VALUES ('2019-07-15 18:55:14', '', 63, 0, 'GET', 'Service列表', 60, '/discovery/{namespace}/services', '2019-07-15 18:55:14');
INSERT INTO `permissions` VALUES ('2019-07-15 18:55:32', '', 64, 0, 'POST', '创建Service', 60, '/discovery/{namespace}/services', '2019-07-15 18:55:32');
INSERT INTO `permissions` VALUES ('2019-07-15 18:55:49', '', 65, 0, 'PUT', '修改Service', 60, '/discovery/{namespace}/services/{serviceName}', '2019-07-15 18:55:49');
INSERT INTO `permissions` VALUES ('2019-07-15 18:56:28', '', 66, 0, 'GET', 'Deployment YAML', 48, '/deployment/{namespace}/yaml/{name}', '2019-07-15 18:56:28');
INSERT INTO `permissions` VALUES ('2019-07-15 18:56:49', '', 67, 0, 'GET', '应用的存储卷详情', 48, '/deployment/{namespace}/pvc/{name}', '2019-07-15 19:02:42');
INSERT INTO `permissions` VALUES ('2019-07-15 18:57:12', '', 68, 0, 'PUT', '应用的启动命令', 48, '/deployment/{namespace}/command/{name}', '2019-07-15 19:02:32');
INSERT INTO `permissions` VALUES ('2019-07-15 18:57:46', '', 69, 0, 'PUT', '应用的CPU、内存-扩容', 48, '/deployment/{namespace}/expansion/{name}', '2019-07-15 19:02:24');
INSERT INTO `permissions` VALUES ('2019-07-15 18:58:20', '', 70, 0, 'PUT', '应用的副本数-伸缩', 48, '/deployment/{namespace}/scale/{name}', '2019-07-15 19:02:06');
INSERT INTO `permissions` VALUES ('2019-07-15 18:58:49', '', 71, 0, 'POST', '挂载持久化存储卷', 48, '/deployment/{namespace}/pvc/{name}/bind', '2019-07-15 19:02:00');
INSERT INTO `permissions` VALUES ('2019-07-15 18:59:52', '', 72, 0, 'PUT', '取消挂载持久化存储卷', 48, '/deployment/{namespace}/pvc/{name}/unbind', '2019-07-15 19:01:50');
INSERT INTO `permissions` VALUES ('2019-07-15 19:00:11', '', 73, 0, 'POST', 'Deployment添加端口', 48, '/deployment/{namespace}/service/{name}/port', '2019-07-15 19:00:11');
INSERT INTO `permissions` VALUES ('2019-07-15 19:00:28', '', 74, 0, 'DELETE', 'Deployment删除端口', 48, '/deployment/{namespace}/service/{name}/port', '2019-07-15 19:00:28');
INSERT INTO `permissions` VALUES ('2019-07-15 19:00:51', '', 75, 0, 'PUT', '修改日志采集规则', 48, '/deployment/{namespace}/logging/{name}', '2019-07-15 19:00:51');
INSERT INTO `permissions` VALUES ('2019-07-15 19:01:16', '', 76, 0, 'PUT', '修改探针规则', 48, '/deployment/{namespace}/probe/{name}', '2019-07-15 19:01:16');
INSERT INTO `permissions` VALUES ('2019-07-15 19:01:38', '', 77, 0, 'PUT', '切换服务网格', 48, '/deployment/{namespace}/mesh/{name}', '2019-07-15 19:03:34');
INSERT INTO `permissions` VALUES ('2019-07-15 19:03:26', '', 78, 0, 'POST', '开始构建应用', 48, '/build/jenkins/{namespace}/project/{name}/building', '2019-07-15 19:03:26');
INSERT INTO `permissions` VALUES ('2019-07-15 19:03:54', '', 79, 0, 'GET', '构建应用输出的信息', 48, '/build/jenkins/{namespace}/project/{name}/console/{number}', '2019-07-15 19:03:54');
INSERT INTO `permissions` VALUES ('2019-07-15 19:04:16', '', 80, 0, 'PUT', '停止构建', 48, '/build/jenkins/{namespace}/project/{name}/abort/{number}', '2019-07-15 19:04:16');
INSERT INTO `permissions` VALUES ('2019-07-16 11:54:56', '', 81, 0, 'GET', '获取组列表', 21, '/group', '2019-07-16 11:55:13');
INSERT INTO `permissions` VALUES ('2019-07-16 11:55:42', 'team', 82, 0, 'POST', '管理员添加组', 21, '/group/admin-add', '2019-07-16 11:55:42');
INSERT INTO `permissions` VALUES ('2019-07-16 11:56:16', 'team', 83, 0, 'PUT', '管理员修改组', 21, '/group/{groupId}/admin-update', '2019-07-16 11:56:50');
INSERT INTO `permissions` VALUES ('2019-07-16 11:56:44', 'team', 84, 0, 'GET', '根据邮箱获取相关成员', 21, '/group/member-like', '2019-07-16 11:56:44');
INSERT INTO `permissions` VALUES ('2019-07-16 11:57:14', 'team', 85, 0, 'DELETE', '管理员删除组', 21, '/group/admin-delete/{groupId}', '2019-07-16 11:57:14');
INSERT INTO `permissions` VALUES ('2019-07-16 11:58:23', 'team', 86, 0, 'GET', '业务线下所以的项目列表', 21, '/group/namespace/{ns}/project', '2019-07-16 11:58:23');
INSERT INTO `permissions` VALUES ('2019-07-16 11:59:03', 'team', 87, 0, 'GET', '业务线下所有的定时任务', 21, '/group/namespace/{ns}/cronjob', '2019-07-16 11:59:03');
INSERT INTO `permissions` VALUES ('2019-07-16 11:59:30', 'team', 88, 0, 'POST', '管理员给组添加项目', 21, '/group/{groupId}/admin-add-project/{projectId}', '2019-07-16 11:59:30');
INSERT INTO `permissions` VALUES ('2019-07-16 11:59:49', 'team', 89, 0, 'POST', '管理员给组添加定时任务', 21, '/group/{groupId}/admin-add-cronjob/{cronjobId}', '2019-07-16 11:59:49');
INSERT INTO `permissions` VALUES ('2019-07-16 12:00:09', 'team', 90, 0, 'POST', '管理员给组添加成员', 21, '/group/{groupId}/admin-add-member/{memberId}', '2019-07-16 12:00:09');
INSERT INTO `permissions` VALUES ('2019-07-16 12:00:31', 'team', 91, 0, 'DELETE', '管理员删除组成员', 21, '/group/{groupId}/admin-del-member/{memberId}', '2019-07-16 12:00:31');
INSERT INTO `permissions` VALUES ('2019-07-16 12:00:51', 'team', 92, 0, 'DELETE', '管理员删除组项目', 21, '/group/{groupId}/admin-del-project/{projectId}', '2019-07-16 12:00:51');
INSERT INTO `permissions` VALUES ('2019-07-16 12:01:10', 'team', 93, 0, 'DELETE', '管理员删除组定时任务', 21, '/group/{groupId}/admin-del-cronjob/{cronjobId}', '2019-07-16 12:01:10');
INSERT INTO `permissions` VALUES ('2019-07-16 18:13:56', '', 94, 0, 'GET', '获取角色的权限Id', 20, '/role/{id:[0-9]+}/permission', '2019-07-16 18:13:56');
INSERT INTO `permissions` VALUES ('2019-07-17 13:18:39', '', 95, 0, 'DELETE', '删除角色', 20, '/role/{id:[0-9]+}', '2019-07-17 13:18:39');
INSERT INTO `permissions` VALUES ('2019-07-17 13:18:55', '', 96, 0, 'GET', '角色详情', 20, '/role/{id:[0-9]+}', '2019-07-17 13:18:55');
INSERT INTO `permissions` VALUES ('2019-07-17 13:19:17', '', 97, 0, 'GET', '角色列表', 20, '/role', '2019-07-17 13:19:17');
INSERT INTO `permissions` VALUES ('2019-07-17 13:19:41', '', 98, 0, 'PUT', '更新角色信息', 20, '/role/{id:[0-9]+}', '2019-07-17 13:19:41');
INSERT INTO `permissions` VALUES ('2019-07-17 13:19:59', '', 99, 0, 'POST', '更新角色的权限', 20, '/role/{id:[0-9]+}/permission', '2019-07-17 13:19:59');
INSERT INTO `permissions` VALUES ('2019-07-17 18:19:10', 'dashboard', 101, 0, 'GET', '个人中心', 1, '/account', '2019-07-18 18:11:16');
INSERT INTO `permissions` VALUES ('2019-07-17 18:20:00', '', 102, 0, 'GET', '个人中心-获取项目', 101, '/account/project', '2019-07-18 18:11:25');
INSERT INTO `permissions` VALUES ('2019-07-17 18:21:20', '', 103, 0, 'POST', '个人中心-修改基本信息', 101, '/account/base/update', '2019-07-18 18:11:31');
INSERT INTO `permissions` VALUES ('2019-07-17 18:23:20', '', 104, 0, 'GET', '个人中心-获取用户信息', 101, '/account/current', '2019-07-18 18:11:40');
INSERT INTO `permissions` VALUES ('2019-07-17 18:26:01', '', 105, 0, 'GET', '个人中心-获取订阅配置', 101, '/account/notice/receive', '2019-07-18 18:11:46');
INSERT INTO `permissions` VALUES ('2019-07-17 18:26:47', '', 106, 0, 'POST', '个人中心-修改订阅配置', 101, '/account/notice/update', '2019-07-18 18:11:53');
INSERT INTO `permissions` VALUES ('2019-07-17 18:27:00', '', 107, 0, 'GET', '个人中心-获取订阅配置', 101, '/account/notice/receive', '2019-07-17 18:27:00');
INSERT INTO `permissions` VALUES ('2019-07-17 18:28:55', '', 108, 0, 'GET', '个人中心-获取用户信息', 101, '/account/current', '2019-07-17 18:28:55');
INSERT INTO `permissions` VALUES ('2019-07-17 18:29:14', '', 109, 0, 'POST', '个人中心-修改基本信息', 101, '/account/base/update', '2019-07-17 18:29:14');
INSERT INTO `permissions` VALUES ('2019-07-17 18:37:24', 'dashboard', 110, 0, 'GET', '个人中心-解绑微信', 101, '/account/unBindWechat', '2019-07-18 18:12:00');
INSERT INTO `permissions` VALUES ('2019-07-17 18:37:47', '', 111, 0, 'GET', '个人中心-获取项目', 101, '/account/project', '2019-07-17 18:37:47');
INSERT INTO `permissions` VALUES ('2019-07-17 18:39:32', '', 112, 0, 'POST', '个人中心-获取绑定二维码', 101, '/wechat/qr', '2019-07-18 18:12:07');
INSERT INTO `permissions` VALUES ('2019-07-17 18:40:24', '', 113, 0, 'GET', '个人中心-发送微信测试', 101, '/wechat/testSend', '2019-07-18 18:12:15');
INSERT INTO `permissions` VALUES ('2019-07-17 18:42:00', '', 114, 0, 'GET', '消息中心', 1, '/notice', '2019-07-17 18:42:00');
INSERT INTO `permissions` VALUES ('2019-07-17 18:42:46', '', 115, 0, 'GET', '消息中心-获取消息列表', 114, '/notice/message', '2019-07-18 18:12:24');
INSERT INTO `permissions` VALUES ('2019-07-17 18:43:43', '', 116, 0, 'GET', '消息中心-获取阅读数', 114, '/notice/message/readcount', '2019-07-18 18:12:31');
INSERT INTO `permissions` VALUES ('2019-07-17 18:44:16', '', 117, 0, 'GET', '消息中心-获取消息提示', 114, '/notice/tips', '2019-07-18 18:12:37');
INSERT INTO `permissions` VALUES ('2019-07-17 19:24:49', '', 118, 0, 'GET', '持久化存储卷详情', 35, '/persistentvolume/{namespace}/pv/{pvName}', '2019-07-17 19:24:49');
INSERT INTO `permissions` VALUES ('2019-07-18 13:49:28', 'table', 119, 1, 'GET', '配置字典', 4, '/configMap', '2019-08-02 11:25:54');
INSERT INTO `permissions` VALUES ('2019-07-18 13:49:59', '', 120, 0, 'GET', '配置字典同步', 119, '/consul/sync', '2019-07-18 13:49:59');
INSERT INTO `permissions` VALUES ('2019-07-18 14:55:18', 'dashboard', 121, 0, 'GET', '组', 2, '/group/list', '2019-08-15 17:46:38');
INSERT INTO `permissions` VALUES ('2019-07-18 15:00:22', '', 123, 0, 'GET', '应用列表', 46, '/project/{namespace}/list', '2019-07-18 15:00:22');
INSERT INTO `permissions` VALUES ('2019-07-18 15:01:38', '', 124, 0, 'POST', '创建应用第二步', 47, '/project/{namespace}/basic/{name}', '2019-07-18 15:01:55');
INSERT INTO `permissions` VALUES ('2019-07-18 18:11:25', '', 127, 0, 'GET', '个人中心-获取项目', 101, '/account/project', '2019-07-18 18:11:25');
INSERT INTO `permissions` VALUES ('2019-07-18 18:11:32', '', 128, 0, 'POST', '个人中心-修改基本信息', 101, '/account/base/update', '2019-07-18 18:11:32');
INSERT INTO `permissions` VALUES ('2019-07-18 18:11:40', '', 129, 0, 'GET', '个人中心-获取用户信息', 101, '/account/current', '2019-07-18 18:11:40');
INSERT INTO `permissions` VALUES ('2019-07-18 18:11:46', '', 130, 0, 'GET', '个人中心-获取订阅配置', 101, '/account/notice/receive', '2019-07-18 18:11:46');
INSERT INTO `permissions` VALUES ('2019-07-18 18:11:53', '', 131, 0, 'POST', '个人中心-修改订阅配置', 101, '/account/notice/update', '2019-07-18 18:11:53');
INSERT INTO `permissions` VALUES ('2019-07-18 18:12:00', 'dashboard', 132, 0, 'GET', '个人中心-解绑微信', 101, '/account/unBindWechat', '2019-07-18 18:12:00');
INSERT INTO `permissions` VALUES ('2019-07-18 18:12:24', '', 135, 0, 'GET', '消息中心-获取消息列表', 114, '/notice/message', '2019-07-18 18:12:24');
INSERT INTO `permissions` VALUES ('2019-07-18 18:12:31', '', 136, 0, 'GET', '消息中心-获取阅读数', 114, '/notice/message/readcount', '2019-07-18 18:12:31');
INSERT INTO `permissions` VALUES ('2019-07-18 18:12:37', '', 137, 0, 'GET', '消息中心-获取消息提示', 114, '/notice/tips', '2019-07-18 18:12:37');
INSERT INTO `permissions` VALUES ('2019-07-18 18:32:55', '', 138, 0, 'GET', 'Terminal Websocket', 48, '/ws/pods/console/exec', '2019-07-18 18:32:55');
INSERT INTO `permissions` VALUES ('2019-07-19 10:50:16', 'sound', 139, 0, 'POST', '公告管理-创建公告', 22, '/proclaim', '2019-07-19 14:48:42');
INSERT INTO `permissions` VALUES ('2019-07-19 10:50:45', 'sound', 140, 0, 'GET', '公告管理-获取列表', 22, '/proclaim', '2019-07-19 14:48:45');
INSERT INTO `permissions` VALUES ('2019-07-19 10:51:12', 'sound', 141, 0, 'POST', '公告管理-创建公告', 22, '/proclaim', '2019-09-02 12:10:21');
INSERT INTO `permissions` VALUES ('2019-07-19 10:51:48', 'sound', 142, 0, 'GET', '公告管理-查看公告详情', 22, '/proclaim/{id:[0-9]+}', '2019-07-19 14:48:48');
INSERT INTO `permissions` VALUES ('2019-07-19 10:52:37', 'sound', 143, 0, 'GET', '公告管理-查看公告详情', 22, '/proclaim/{id:[0-9]+}', '2019-09-02 12:10:30');
INSERT INTO `permissions` VALUES ('2019-07-19 10:53:55', '', 144, 0, 'GET', '公告管理-获取用户列表', 22, '/member/all', '2019-07-19 14:48:52');
INSERT INTO `permissions` VALUES ('2019-07-19 10:55:13', '', 145, 0, 'GET', '公告管理-获取业务线列表', 22, '/namespace', '2019-07-19 14:48:56');
INSERT INTO `permissions` VALUES ('2019-07-19 14:48:42', 'sound', 147, 0, 'POST', '公告管理-创建公告', 22, '/proclaim', '2019-09-02 12:10:33');
INSERT INTO `permissions` VALUES ('2019-07-19 14:48:45', 'sound', 148, 0, 'GET', '公告管理-获取列表', 22, '/proclaim', '2019-09-02 12:10:36');
INSERT INTO `permissions` VALUES ('2019-07-19 14:48:48', 'sound', 149, 0, 'GET', '公告管理-查看公告详情', 22, '/proclaim/{id:[0-9]+}', '2019-09-02 12:10:38');
INSERT INTO `permissions` VALUES ('2019-07-19 14:48:56', '', 151, 0, 'GET', '公告管理-获取业务线列表', 22, '/namespace', '2019-09-02 12:10:40');
INSERT INTO `permissions` VALUES ('2019-07-22 15:24:38', '', 152, 0, 'GET', '项目hooks列表', 48, '/hooks/webhooks/{namespace}/project/{name}', '2019-07-22 15:24:38');
INSERT INTO `permissions` VALUES ('2019-07-22 15:24:57', '', 153, 0, 'GET', '项目webhooks详情', 48, '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', '2019-07-22 15:24:57');
INSERT INTO `permissions` VALUES ('2019-07-22 15:25:15', '', 154, 0, 'DELETE', '删除webhooks', 48, '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', '2019-07-22 15:25:15');
INSERT INTO `permissions` VALUES ('2019-07-22 15:25:31', '', 155, 0, 'PUT', '修改项目webhooks', 48, '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', '2019-07-22 15:25:31');
INSERT INTO `permissions` VALUES ('2019-07-22 15:25:54', '', 156, 0, 'POST', '创建项目webhooks', 48, '/hooks/webhooks/{namespace}/project/{name}', '2019-07-22 15:25:54');
INSERT INTO `permissions` VALUES ('2019-07-22 15:26:11', '', 157, 0, 'POST', '测试项目webhooks', 48, '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', '2019-07-22 15:26:11');
INSERT INTO `permissions` VALUES ('2019-07-22 15:34:37', '', 158, 0, 'GET', '获取所有event事件', 48, '/event/all', '2019-07-22 15:34:37');
INSERT INTO `permissions` VALUES ('2019-07-22 15:38:07', '', 159, 0, 'GET', '进入容器', 48, '/terminal/{namespace}/index/{name}/pod/{podName}/container/{container}', '2019-07-22 15:38:07');
INSERT INTO `permissions` VALUES ('2019-07-22 15:39:25', '', 160, 0, 'POST', '接收git-repo调用', 161, '/public/build/{namespace}/app/{name}', '2019-07-22 15:41:31');
INSERT INTO `permissions` VALUES ('2019-07-22 15:40:24', 'api', 161, 1, 'GET', 'API', 0, '/api', '2019-07-22 15:40:24');
INSERT INTO `permissions` VALUES ('2019-07-22 15:41:23', '', 163, 0, 'POST', '接收prometheus报警信息', 161, '/public/prometheus/alerts', '2019-07-22 15:41:39');
INSERT INTO `permissions` VALUES ('2019-07-23 17:55:02', 'table', 166, 1, 'GET', 'Consul/KV配置中心', 4, '/consul/acl/list', '2019-07-23 17:55:02');
INSERT INTO `permissions` VALUES ('2019-07-23 17:55:40', '', 167, 0, 'GET', 'Consul ACL 列表', 166, '/consul/{namespace}/list', '2019-07-23 17:56:35');
INSERT INTO `permissions` VALUES ('2019-07-23 17:56:35', '', 168, 0, 'GET', 'Consul ACL 列表', 166, '/consul/{namespace}/list', '2019-07-23 17:56:35');
INSERT INTO `permissions` VALUES ('2019-07-23 17:57:17', '', 169, 0, 'GET', 'Consul ACL 详情', 166, '/consul/{namespace}/one/{name}', '2019-07-23 17:57:17');
INSERT INTO `permissions` VALUES ('2019-07-23 17:57:48', '', 170, 0, 'POST', 'Consul ACL 创建', 166, '/consul/{namespace}', '2019-07-23 17:57:48');
INSERT INTO `permissions` VALUES ('2019-07-23 17:58:14', '', 171, 0, 'PUT', 'Consul ACL修改', 166, '/consul/{namespace}/one/{name}', '2019-07-23 17:58:14');
INSERT INTO `permissions` VALUES ('2019-07-23 17:58:42', '', 172, 0, 'DELETE', 'Consul ACL 删除', 166, '/consul/{namespace}/one/{name}', '2019-07-23 17:58:42');
INSERT INTO `permissions` VALUES ('2019-07-23 17:59:08', '', 173, 0, 'GET', 'Consul KV详情', 166, '/consul/kv/{namespace}/one/{name}', '2019-07-23 17:59:08');
INSERT INTO `permissions` VALUES ('2019-07-23 17:59:35', '', 174, 0, 'GET', 'Consul KV 列表信息', 166, '/consul/kv/{namespace}/list/{name}', '2019-07-23 17:59:35');
INSERT INTO `permissions` VALUES ('2019-07-23 18:00:02', '', 175, 0, 'POST', 'Consul KV 添加', 166, '/consul/kv/{namespace}/one/{name}', '2019-07-23 18:00:02');
INSERT INTO `permissions` VALUES ('2019-07-23 18:00:28', '', 176, 0, 'DELETE', 'Consul KV 删除', 166, '/consul/kv/{namespace}/one/{name}', '2019-07-23 18:00:28');
INSERT INTO `permissions` VALUES ('2019-07-24 11:27:05', 'clock-circle-o', 177, 1, 'GET', '调整容器时间', 9, '/faketime', '2019-07-24 11:27:05');
INSERT INTO `permissions` VALUES ('2019-07-24 11:27:40', '', 178, 0, 'PUT', '调整容器时间', 177, '/tools/faketime/{namespace}/project/{name}', '2019-07-24 11:27:40');
INSERT INTO `permissions` VALUES ('2019-07-24 11:50:10', '', 179, 0, 'POST', '配置字典创建', 48, '/configmap/{namespace}/project/{name}', '2019-07-25 11:08:11');
INSERT INTO `permissions` VALUES ('2019-07-24 11:50:46', '', 180, 0, 'GET', '配置字典获取', 48, '/configmap/{namespace}/project/{name}', '2019-07-25 11:08:39');
INSERT INTO `permissions` VALUES ('2019-07-24 11:51:18', '', 181, 0, 'GET', '配置字典数据列表', 48, '/configmap/{namespace}/project/{name}/data', '2019-07-25 11:09:26');
INSERT INTO `permissions` VALUES ('2019-07-24 11:51:36', '', 182, 0, 'POST', '配置字典创建', 119, '/config/map', '2019-09-02 12:14:16');
INSERT INTO `permissions` VALUES ('2019-07-24 11:52:14', '', 183, 0, 'POST', '配置字典数据创建', 48, '/configmap/{namespace}/project/{name}/data', '2019-07-25 11:09:03');
INSERT INTO `permissions` VALUES ('2019-07-24 11:53:04', '', 184, 0, 'POST', '配置字典数据更新', 48, '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', '2019-07-25 11:09:49');
INSERT INTO `permissions` VALUES ('2019-07-24 11:53:35', '', 185, 0, 'GET', '配置字典数据删除', 48, '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', '2019-07-25 11:10:17');
INSERT INTO `permissions` VALUES ('2019-07-24 12:03:11', 'copy', 186, 1, 'GET', '应用/环境克隆', 9, '/duplication', '2019-07-24 12:03:11');
INSERT INTO `permissions` VALUES ('2019-07-24 14:15:10', 'table', 187, 1, 'GET', 'Webhooks', 4, '/webhook/list', '2019-07-24 14:15:10');
INSERT INTO `permissions` VALUES ('2019-07-24 14:16:26', '', 188, 0, 'POST', '创建Webhook', 187, '/hooks/webhooks/{namespace}/project/{name}', '2019-07-24 14:16:26');
INSERT INTO `permissions` VALUES ('2019-07-24 14:16:58', '', 189, 0, 'PUT', '修改Webhook', 187, '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', '2019-07-24 14:16:58');
INSERT INTO `permissions` VALUES ('2019-07-24 14:17:23', '', 190, 0, 'DELETE', '删除Webhook', 187, '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', '2019-07-24 14:17:23');
INSERT INTO `permissions` VALUES ('2019-07-24 14:18:17', '', 191, 0, 'GET', 'Webhook详情', 187, '/hooks/webhooks/{namespace}/project/{name}/{id:[0-9]+}', '2019-07-24 14:18:17');
INSERT INTO `permissions` VALUES ('2019-07-24 14:23:00', 'table', 192, 0, 'GET', 'Webhooks列表', 187, '/hooks/webhooks/{namespace}/project/{name}', '2019-07-24 14:23:00');
INSERT INTO `permissions` VALUES ('2019-07-24 14:23:33', '', 193, 0, 'GET', '发送webhooks测试数据', 187, '/hooks/webhooks/{namespace}/project/{name}/test-send/{id:[0-9]+}', '2019-07-24 14:23:33');
INSERT INTO `permissions` VALUES ('2019-07-24 15:25:32', '', 194, 0, 'POST', '配置字典创建', 119, '/config/map', '2019-09-02 12:14:18');
INSERT INTO `permissions` VALUES ('2019-07-24 15:43:16', '', 195, 0, 'POST', '克隆单个应用', 186, '/tools/duplication/single', '2019-07-24 15:43:16');
INSERT INTO `permissions` VALUES ('2019-07-24 16:20:13', '', 196, 0, 'POST', '配置字典创建', 119, '/config/map/add', '2019-09-02 12:14:21');
INSERT INTO `permissions` VALUES ('2019-07-24 18:34:07', '', 197, 0, 'POST', '配置字典数据更新', 119, '/config/map/update/{config_map_id}/{id}', '2019-09-02 12:14:23');
INSERT INTO `permissions` VALUES ('2019-07-25 11:08:11', '', 198, 0, 'POST', '配置字典创建', 119, '/configmap/{namespace}/project/{name}', '2019-09-02 12:14:26');
INSERT INTO `permissions` VALUES ('2019-07-25 11:08:39', '', 199, 0, 'GET', '配置字典获取', 119, '/configmap/{namespace}/project/{name}', '2019-09-02 12:14:28');
INSERT INTO `permissions` VALUES ('2019-07-25 11:09:03', '', 200, 0, 'POST', '配置字典数据创建', 119, '/configmap/{namespace}/project/{name}/data', '2019-09-02 12:14:31');
INSERT INTO `permissions` VALUES ('2019-07-25 11:09:26', '', 201, 0, 'GET', '配置字典数据列表', 119, '/configmap/{namespace}/project/{name}/data', '2019-09-02 12:14:33');
INSERT INTO `permissions` VALUES ('2019-07-25 11:09:49', '', 202, 0, 'POST', '配置字典数据更新', 119, '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', '2019-09-02 12:14:36');
INSERT INTO `permissions` VALUES ('2019-07-25 11:10:17', '', 203, 0, 'GET', '配置字典数据删除', 119, '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', '2019-09-02 12:14:39');
INSERT INTO `permissions` VALUES ('2019-07-25 15:25:18', '', 204, 0, 'GET', '获取 Git branch列表', 47, '/git/branches', '2019-07-25 15:25:18');
INSERT INTO `permissions` VALUES ('2019-07-25 15:25:45', '', 205, 0, 'GET', '获取 Git tags 列表', 47, '/git/tags', '2019-07-25 15:25:45');
INSERT INTO `permissions` VALUES ('2019-07-26 10:35:41', 'desktop', 206, 0, 'GET', '获取内存指数', 2, '/workspace/{namespace}/metrics', '2019-07-29 14:08:55');
INSERT INTO `permissions` VALUES ('2019-07-26 11:28:27', 'desktop', 207, 0, 'GET', '获取当前服务项目', 2, '/project/{namespace}/workspace', '2019-07-29 14:08:58');
INSERT INTO `permissions` VALUES ('2019-07-26 15:06:37', 'desktop', 209, 0, 'GET', '获取动态', 2, '/workspace/{namespace}/active', '2019-08-02 16:35:38');
INSERT INTO `permissions` VALUES ('2019-07-29 11:46:21', '', 211, 0, 'GET', 'Webhooks列表', 187, '/hooks/webhooks', '2019-07-29 15:03:43');
INSERT INTO `permissions` VALUES ('2019-07-29 11:51:19', 'shop', 212, 1, 'GET', 'Dockerfile', 10, '/dockerfile/list', '2019-07-29 11:51:19');
INSERT INTO `permissions` VALUES ('2019-07-29 11:51:48', '', 213, 0, 'GET', '获取Dockerfile详情', 212, '/market/dockerfile/{id:[0-9]+}', '2019-07-29 11:52:11');
INSERT INTO `permissions` VALUES ('2019-07-29 11:52:06', '', 214, 0, 'POST', '创建Dockerfile', 212, '/market/dockerfile', '2019-07-29 11:52:06');
INSERT INTO `permissions` VALUES ('2019-07-29 11:52:11', '', 215, 0, 'GET', '获取Dockerfile详情', 10, '/market/dockerfile/{id:[0-9]+}', '2019-07-29 11:52:11');
INSERT INTO `permissions` VALUES ('2019-07-29 11:52:30', '', 216, 0, 'GET', 'Dockerfile列表', 212, '/market/dockerfile', '2019-07-29 11:52:30');
INSERT INTO `permissions` VALUES ('2019-07-29 11:52:46', '', 217, 0, 'PUT', '更新Dockerfile', 212, '/market/dockerfile/{id:[0-9]+}', '2019-07-29 11:52:46');
INSERT INTO `permissions` VALUES ('2019-07-29 11:53:02', '', 218, 0, 'DELETE', '删除Dockerfile', 212, '/market/dockerfile/{id:[0-9]+}', '2019-07-29 11:53:02');
INSERT INTO `permissions` VALUES ('2019-07-29 11:53:25', '', 219, 0, 'GET', '下载Dockerfile', 212, '/market/dockerfile/{id:[0-9]+}/download', '2019-07-29 11:53:25');
INSERT INTO `permissions` VALUES ('2019-07-29 11:59:09', '', 220, 0, 'POST', '创建webhook', 187, '/hooks/webhooks', '2019-07-29 15:03:49');
INSERT INTO `permissions` VALUES ('2019-07-29 14:01:56', 'api', 221, 1, 'GET', '入口/API列表', 5, '/ingress/list', '2019-07-29 14:01:56');
INSERT INTO `permissions` VALUES ('2019-07-29 14:07:04', 'tags-o', 225, 1, 'GET', '定时任务', 3, '/cornjob/list', '2019-07-29 14:07:04');
INSERT INTO `permissions` VALUES ('2019-07-29 14:09:22', 'dashboard', 226, 1, 'GET', '上线统计', 1, '/statistics', '2019-07-31 16:42:31');
INSERT INTO `permissions` VALUES ('2019-07-29 14:09:42', 'bar-chart', 227, 1, 'GET', '监控', 1, '/monitor', '2019-07-29 14:09:42');
INSERT INTO `permissions` VALUES ('2019-07-29 15:03:43', '', 228, 0, 'GET', 'Webhooks列表', 187, '/hooks/webhooks', '2019-07-29 15:03:43');
INSERT INTO `permissions` VALUES ('2019-07-29 15:03:49', '', 229, 0, 'POST', '创建webhook', 187, '/hooks/webhooks', '2019-07-29 15:03:49');
INSERT INTO `permissions` VALUES ('2019-07-29 15:04:19', '', 230, 0, 'GET', 'Webhooks详情', 187, '/hooks/webhooks/{id:[0-9]+}', '2019-07-29 15:04:19');
INSERT INTO `permissions` VALUES ('2019-07-29 15:04:37', 'table', 231, 0, 'POST', '修改Webhooks', 187, '/hooks/webhooks/{id:[0-9]+}', '2019-07-29 15:04:37');
INSERT INTO `permissions` VALUES ('2019-07-30 11:40:01', 'database', 233, 0, 'GET', '应用审核', 46, '/audit', '2019-07-30 11:40:09');
INSERT INTO `permissions` VALUES ('2019-07-30 11:40:34', '', 234, 0, 'POST', '审核拒绝', 233, '/audit/{namespace}/refused/{name}', '2019-07-30 11:40:34');
INSERT INTO `permissions` VALUES ('2019-07-31 15:09:07', 'dashboard', 235, 0, 'GET', '获取项目发布统计', 226, '/statistics/{namespace}/build', '2019-07-31 15:09:07');
INSERT INTO `permissions` VALUES ('2019-07-17 13:29:21', '', 240, 0, 'POST', '创建角色', 20, '/role', '2019-07-17 13:29:21');
INSERT INTO `permissions` VALUES ('2019-07-31 19:55:37', '', 241, 0, 'GET', '应用列表', 46, '/project/{namespace}', '2019-07-31 19:55:37');
INSERT INTO `permissions` VALUES ('2019-07-31 19:55:37', '', 242, 0, 'GET', '同步就算', 46, '/project/{namespace}/sync', '2019-07-31 19:55:37');
INSERT INTO `permissions` VALUES ('2019-07-31 19:55:37', '', 243, 0, 'DELETE', '删除应用', 46, '/project/{namespace}/app/{name}', '2019-07-31 19:55:37');
INSERT INTO `permissions` VALUES ('2019-07-31 19:55:37', '', 244, 0, 'PUT', '更新应用', 46, '/project/{namespace}/detail/{name}', '2019-07-31 19:55:37');
INSERT INTO `permissions` VALUES ('2019-07-17 19:24:49', '', 245, 0, 'POST', '创建存储卷', 35, '/persistentvolumeclaim/{namespace}', '2019-07-17 19:24:49');
INSERT INTO `permissions` VALUES ('2019-07-17 19:24:49', '', 246, 0, 'GET', '获取所有的列表', 35, '/persistentvolumeclaim/{namespace}/all', '2019-07-17 19:24:49');
INSERT INTO `permissions` VALUES ('2019-07-15 16:54:07', '', 247, 0, 'POST', '权限创建', 12, '/permission/create', '2019-08-07 14:12:27');
INSERT INTO `permissions` VALUES ('2019-07-15 16:54:07', '', 248, 0, 'GET', '监控-获取全局网络消耗', 227, '/monitor/prometheus/query/network', '2019-07-17 19:24:49');
INSERT INTO `permissions` VALUES ('2019-07-15 16:54:07', '', 249, 0, 'GET', '监控-获取全局OPS', 227, '/monitor/prometheus/query/ops', '2019-07-17 19:24:49');
INSERT INTO `permissions` VALUES (NULL, '', 250, 0, 'GET', '用户详细信息', 19, '/member/{id:[0-9]+}', '2019-08-07 14:12:22');
INSERT INTO `permissions` VALUES (NULL, '', 251, 0, 'POST', '创建用户', 19, '/member', '2019-08-07 14:12:02');
INSERT INTO `permissions` VALUES (NULL, '', 252, 0, 'PUT', '更新用户', 19, '/member/{id:[0-9]+}', '2019-08-07 14:12:07');
INSERT INTO `permissions` VALUES (NULL, '', 253, 0, 'GET', '获取自己的信息', 2, '/member/me', '2019-08-07 14:12:14');
INSERT INTO `permissions` VALUES (NULL, '', 254, 0, 'GET', '当前用户的namespaces', 2, '/member/namespaces', '2019-08-12 11:01:36');
INSERT INTO `permissions` VALUES ('2019-08-01 17:16:42', '', 255, 0, 'GET', '同步 Ingress', 221, '/ingress/{namespace}/sync', '2019-08-02 17:54:55');
INSERT INTO `permissions` VALUES ('2019-08-01 17:17:37', '', 256, 0, 'GET', '获取不含Ingress的项目列表', 221, '/ingress/{namespace}/project', '2019-08-01 17:18:08');
INSERT INTO `permissions` VALUES ('2019-08-01 17:18:03', '', 257, 0, 'POST', '创建ingress', 221, '/ingress/{namespace}/detail/{name}', '2019-08-01 17:18:11');
INSERT INTO `permissions` VALUES ('2019-08-01 17:18:08', '', 258, 0, 'GET', '获取不含Ingress的项目列表', 221, '/ingress/{namespace}/project', '2019-08-01 17:18:08');
INSERT INTO `permissions` VALUES ('2019-08-01 17:18:11', '', 259, 0, 'POST', '创建ingress', 221, '/ingress/{namespace}/detail/{name}', '2019-08-01 17:18:11');
INSERT INTO `permissions` VALUES ('2019-08-01 17:18:30', '', 260, 0, 'GET', 'Ingress列表', 221, '/ingress/{namespace}', '2019-08-01 17:18:30');
INSERT INTO `permissions` VALUES ('2019-08-01 17:18:48', '', 261, 0, 'GET', 'Ingress详情', 221, '/ingress/{namespace}/detail/{name}', '2019-08-01 17:18:48');
INSERT INTO `permissions` VALUES ('2019-08-01 17:19:25', '', 262, 0, 'PUT', '生成Ingress', 48, '/ingress/{namespace}/generate/{name}', '2019-08-01 17:19:25');
INSERT INTO `permissions` VALUES ('2019-08-01 17:24:29', '', 263, 0, 'PUT', '挂载hosts', 48, '/deployment/{namespace}/hosts/{name}', '2019-08-01 17:24:29');
INSERT INTO `permissions` VALUES ('2019-08-01 17:28:27', '', 265, 0, 'GET', '获取Jenkins build配置信息', 48, '/build/jenkins/{namespace}/project/{name}/conf', '2019-08-01 17:28:27');
INSERT INTO `permissions` VALUES ('2019-08-01 17:29:13', '', 266, 0, 'GET', '获取build 记录', 48, '/build/jenkins/{namespace}/project/{name}/history', '2019-08-01 17:29:13');
INSERT INTO `permissions` VALUES ('2019-08-01 17:29:45', '', 267, 0, 'PUT', '修改应用的git地址应用回滚', 48, '/build/jenkins/{namespace}/project/{name}/rollback/{id:[0-9]+}', '2019-08-01 17:29:45');
INSERT INTO `permissions` VALUES ('2019-08-02 16:35:38', 'desktop', 270, 0, 'GET', '获取动态', 2, '/workspace/{namespace}/active', '2019-08-02 16:35:38');
INSERT INTO `permissions` VALUES ('2019-08-02 17:54:55', '', 271, 0, 'GET', '同步 Ingress', 119, '/ingress/{namespace}/sync', '2019-08-02 17:54:55');
INSERT INTO `permissions` VALUES ('2019-08-02 17:54:55', 'team', 272, 0, 'GET', '定时任务详细信息', 0, '/cronjob/{namespace}/{name}', '2019-08-02 17:54:55');
INSERT INTO `permissions` VALUES ('2019-08-02 17:54:55', '', 273, 0, 'GET', '获取当前用户组列表', 2, '/group/user-my-list', '2019-08-02 17:54:55');
INSERT INTO `permissions` VALUES ('2019-08-15 17:41:10', 'dashboard', 274, 0, 'GET', '组-所属组列表', 121, '/group/user-my-list', '2019-08-15 17:41:10');
INSERT INTO `permissions` VALUES ('2019-08-15 17:41:49', 'dashboard', 275, 0, 'GET', '组-所属业务线列表', 121, '/group/user-ns-list', '2019-08-15 17:41:49');
INSERT INTO `permissions` VALUES ('2019-08-15 17:42:07', 'dashboard', 276, 0, 'POST', '组-组长添加组', 121, '/group/owner-add-group', '2019-08-15 17:42:07');
INSERT INTO `permissions` VALUES ('2019-08-15 17:42:26', 'dashboard', 277, 0, 'PUT', '组-组长修改组', 121, '/group/{groupId}/owner-update-group', '2019-08-15 17:42:26');
INSERT INTO `permissions` VALUES ('2019-08-15 17:42:50', 'dashboard', 278, 0, 'POST', '组-组长添加组成员', 121, '/group/{groupId}/owner-add-member/{memberId}', '2019-08-15 17:42:50');
INSERT INTO `permissions` VALUES ('2019-08-15 17:43:18', 'dashboard', 279, 0, 'DELETE', '组-组长删除成员', 121, '/group/{groupId}/owner-del-member/{memberId}', '2019-08-15 17:43:18');
INSERT INTO `permissions` VALUES ('2019-08-15 17:43:34', 'dashboard', 280, 0, 'POST', '组-组长添加项目', 121, '/group/{groupId}/owner-add-project/{projectId}', '2019-08-15 17:43:34');
INSERT INTO `permissions` VALUES ('2019-08-15 17:43:52', 'dashboard', 281, 0, 'DELETE', '组-组长删除项目', 121, '/group/{groupId}/owner-del-project/{projectId}', '2019-08-15 17:43:52');
INSERT INTO `permissions` VALUES ('2019-08-15 17:44:08', 'dashboard', 282, 0, 'POST', '组-组长添加定时任务', 121, '/group/{groupId}/owner-add-cronjob/{cronjobId}', '2019-08-15 17:44:08');
INSERT INTO `permissions` VALUES ('2019-08-15 17:44:26', 'dashboard', 283, 0, 'DELETE', '组-组长删除定时任务', 121, '/group/{groupId}/owner-del-cronjob/{cronjobId}', '2019-08-15 17:44:26');
INSERT INTO `permissions` VALUES ('2019-08-15 17:44:46', 'dashboard', 284, 0, 'DELETE', '组-组长删除组', 121, '/group/{groupId}/owner-del-group', '2019-08-15 17:44:46');
INSERT INTO `permissions` VALUES ('2019-08-15 17:45:00', 'dashboard', 285, 0, 'GET', '组-组详细信息', 21, '/group/{groupId}/rel', '2019-08-15 17:45:00');
INSERT INTO `permissions` VALUES ('2019-08-15 17:45:14', 'dashboard', 286, 0, 'GET', '组-获取相关成员', 121, '/group/member-like', '2019-08-15 17:45:14');
INSERT INTO `permissions` VALUES ('2019-08-15 17:45:28', 'dashboard', 287, 0, 'GET', '组-业务线下项目列表', 121, '/group/namespace/{ns}/project', '2019-08-15 17:45:28');
INSERT INTO `permissions` VALUES ('2019-08-15 17:45:54', 'dashboard', 288, 0, 'GET', '组-业务线下定时任务列表', 121, '/group/namespace/{ns}/cronjob', '2019-08-15 17:45:54');
INSERT INTO `permissions` VALUES ('2019-08-15 17:46:38', 'dashboard', 289, 0, 'GET', '组', 21, '/group/list', '2019-08-15 17:46:38');
INSERT INTO `permissions` VALUES ('2019-08-15 17:46:55', 'dashboard', 290, 0, 'GET', '组-组详细信息', 121, '/group/{groupId}/rel', '2019-08-15 17:46:55');
INSERT INTO `permissions` VALUES ('2019-08-16 10:20:04', '', 291, 0, 'GET', '获取配置信息', 47, '/project/config/detail', '2019-08-20 10:43:05');
INSERT INTO `permissions` VALUES ('2019-08-20 10:43:05', '', 292, 0, 'GET', '获取配置信息', 119, '/project/config/detail', '2019-09-02 12:10:02');
INSERT INTO `permissions` VALUES ('2019-08-20 11:18:53', 'tags-o', 293, 0, 'POST', '定时任务-创建定时任务', 225, '/cronjob/{namespace}', '2019-08-20 11:18:53');
INSERT INTO `permissions` VALUES ('2019-08-20 11:19:11', 'tags-o', 294, 0, 'GET', '定时任务-获取定时任务列表', 225, '/cronjob/{namespace}', '2019-08-20 11:19:11');
INSERT INTO `permissions` VALUES ('2019-08-20 11:19:35', 'tags-o', 295, 0, 'DELETE', '定时任务-删除定时任务', 225, '/cronjob/{namespace}/{name}', '2019-08-20 11:19:35');
INSERT INTO `permissions` VALUES ('2019-08-20 11:19:53', 'tags-o', 296, 0, 'DELETE', '定时任务-删除业务线下所有的定时任务', 225, '/cronjob/job/{namespace}/del', '2019-08-20 11:19:53');
INSERT INTO `permissions` VALUES ('2019-08-20 11:20:12', 'tags-o', 297, 0, 'PUT', '定时任务-修改定时任务信息', 225, '/cronjob/{namespace}/{name}', '2019-08-20 11:20:12');
INSERT INTO `permissions` VALUES ('2019-08-20 11:20:28', 'tags-o', 298, 0, 'GET', '定时任务-获取定时任务详细信息', 225, '/cronjob/{namespace}/{name}', '2019-08-20 11:20:28');
INSERT INTO `permissions` VALUES ('2019-08-20 11:20:44', 'tags-o', 299, 0, 'POST', '定时任务-构建定时任务日志', 225, '/cronjob/log/{namespace}/{name}', '2019-08-20 11:20:44');
INSERT INTO `permissions` VALUES ('2019-08-20 11:26:46', 'tags-o', 300, 0, 'POST', '定时任务-创建config-env', 225, '/config/{namespace}/env/{name}', '2019-08-20 11:26:46');
INSERT INTO `permissions` VALUES ('2019-08-20 11:27:15', 'tags-o', 301, 0, 'PUT', '定时任务-修改config-env', 225, '/config/{namespace}/env/{name}/{id:[0-9]+}', '2019-08-20 11:27:15');
INSERT INTO `permissions` VALUES ('2019-08-20 11:27:39', 'tags-o', 302, 0, 'DELETE', '定时任务-删除config-env', 225, '/config/{namespace}/env/{name}/{id:[0-9]+}', '2019-08-20 11:27:39');
INSERT INTO `permissions` VALUES ('2019-08-20 11:28:02', 'tags-o', 303, 0, 'GET', '定时任务-获取config-env', 225, '/config/{namespace}/env/{name}', '2019-08-20 11:28:02');
INSERT INTO `permissions` VALUES ('2019-08-20 11:33:07', '', 304, 0, 'GET', '获取配置字典详情', 119, '/config/{namespace}/map/{name}', '2019-08-20 11:33:07');
INSERT INTO `permissions` VALUES ('2019-08-20 11:33:30', 'table', 305, 0, 'GET', '同步单个配置字典详情', 119, '/config/{namespace}/map/{name}/onePull', '2019-08-20 11:33:30');
INSERT INTO `permissions` VALUES ('2019-08-20 11:33:57', 'table', 306, 0, 'GET', '获取配置字典列表', 119, '/config/{namespace}', '2019-08-20 11:33:57');
INSERT INTO `permissions` VALUES ('2019-08-20 11:34:21', 'table', 307, 0, 'POST', '创建配置字典', 119, '/config/{namespace}', '2019-08-20 11:34:21');
INSERT INTO `permissions` VALUES ('2019-08-20 11:34:46', 'table', 308, 0, 'POST', '更新配置字典', 119, '/config/{namespace}/map/{name}', '2019-08-20 11:34:46');
INSERT INTO `permissions` VALUES ('2019-08-20 11:35:06', 'table', 309, 0, 'DELETE', '删除配置字典', 119, '/config/{namespace}/delete/{name}', '2019-08-20 11:36:23');
INSERT INTO `permissions` VALUES ('2019-08-20 11:35:52', 'table', 310, 0, 'POST', '项目下创建配置字典', 119, '/configmap/{namespace}/project/{name}', '2019-08-20 11:35:52');
INSERT INTO `permissions` VALUES ('2019-08-20 11:36:00', 'table', 311, 0, 'POST', '删除配置字典', 119, '/config/{namespace}/delete/{name}', '2019-09-02 12:09:53');
INSERT INTO `permissions` VALUES ('2019-08-20 11:36:23', 'table', 312, 0, 'DELETE', '删除配置字典', 119, '/config/{namespace}/delete/{name}', '2019-09-02 12:09:58');
INSERT INTO `permissions` VALUES ('2019-08-20 11:36:46', 'table', 313, 0, 'GET', '项目下获取配置字典信息', 119, '/configmap/{namespace}/project/{name}', '2019-08-20 11:36:46');
INSERT INTO `permissions` VALUES ('2019-08-20 11:37:19', 'table', 314, 0, 'POST', '项目下创建配置字典数据', 119, '/configmap/{namespace}/project/{name}/data', '2019-08-20 11:37:19');
INSERT INTO `permissions` VALUES ('2019-08-20 11:37:42', 'table', 315, 0, 'GET', '项目下获取配置字典数据', 119, '/configmap/{namespace}/project/{name}/data', '2019-08-20 11:37:42');
INSERT INTO `permissions` VALUES ('2019-08-20 11:38:52', 'table', 316, 0, 'PUT', '项目下修改配置字典数据', 119, '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', '2019-08-20 11:38:52');
INSERT INTO `permissions` VALUES ('2019-08-20 11:39:17', 'table', 317, 0, 'DELETE', '项目下删除配置字典数据', 119, '/configmap/{namespace}/project/{name}/data/{id:[0-9]+}', '2019-08-20 11:39:17');
INSERT INTO `permissions` VALUES ('2019-08-20 11:39:38', 'table', 318, 0, 'GET', '环境变量列表', 119, '/config/{namespace}/env/{name}', '2019-08-20 11:39:38');
INSERT INTO `permissions` VALUES ('2019-08-20 11:40:02', 'table', 319, 0, 'POST', '环境变量创建', 119, '/config/{namespace}/env/{name}', '2019-08-20 11:40:02');
INSERT INTO `permissions` VALUES ('2019-08-20 11:40:27', 'table', 320, 0, 'PUT', '环境变量修改', 119, '/config/{namespace}/env/{name}/{id:[0-9]+}', '2019-08-20 11:40:27');
INSERT INTO `permissions` VALUES ('2019-08-20 11:40:42', 'table', 321, 0, 'DELETE', '环境变量删除', 119, '/config/{namespace}/env/{name}/{id:[0-9]+}', '2019-08-20 11:40:42');
INSERT INTO `permissions` VALUES ('2019-08-20 11:52:17', 'tags-o', 322, 0, 'GET', '定时任务-定时任务构建记录', 225, '/build/jenkins/{namespace}/cronjob/{name}/history', '2019-08-20 11:52:17');
INSERT INTO `permissions` VALUES ('2019-08-20 11:52:46', 'tags-o', 323, 0, 'GET', '定时任务-构建历史详情', 225, '/build/jenkins/{namespace}/cronjob/{name}/console/{number}', '2019-08-20 11:52:46');
INSERT INTO `permissions` VALUES ('2019-08-21 18:00:37', 'dashboard', 324, 0, 'GET', '组-查询组名是否存在', 121, '/group/name/exists', '2019-08-21 18:00:37');
INSERT INTO `permissions` VALUES ('2019-08-21 18:00:58', 'dashboard', 325, 0, 'GET', '组-查询组别名是否存在', 121, '/group/display_name/exists', '2019-08-21 18:00:58');
INSERT INTO `permissions` VALUES ('2019-09-02 11:59:24', '', 326, 0, 'GET', '消息中心-获取消息提示', 114, '/notice/detail/{id:[0-9]+}', '2019-09-02 11:59:24');
INSERT INTO `permissions` VALUES ('2019-11-06 11:59:24', '', 327, 0, 'GET', '应用详情-监控信息', 48, '/project/{namespace}/monitor/{name}', '2019-11-06 11:59:24');
INSERT INTO `permissions` VALUES ('2019-11-06 11:59:24', '', 328, 0, 'GET', '应用详情-告警统计', 48, '/project/{namespace}/alerts/{name}', '2019-11-06 11:59:24');

-- ----------------------------
-- Table structure for persistentvolumeclaim
-- ----------------------------
DROP TABLE IF EXISTS `persistentvolumeclaim`;
CREATE TABLE `persistentvolumeclaim`  (
  `access_modes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `labels` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage_class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for project_jenkins
-- ----------------------------
DROP TABLE IF EXISTS `project_jenkins`;
CREATE TABLE `project_jenkins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `command` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `git_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `git_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `git_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_jenkins
-- ----------------------------
INSERT INTO `project_jenkins` VALUES (58, 'yamlview', 'default', 'APPNAME=yamlview\r\nBUILD_PATH=\r\nNAMESPACE=default\r\nHUB_ADDR=192.168.145.132\r\n\r\nmvn clean package\r\n\r\ndocker build -f ${BUILD_PATH}Dockerfile --rm -t ${APPNAME}:${TAGNAME} .\r\ndocker tag ${APPNAME}:${TAGNAME} $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\ndocker push $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}', 'git@github.com:jianggaishi/helloworld0302.git', 'tag', 'V6.0', '2022-04-04 12:43:03', '2022-04-04 12:43:03');
INSERT INTO `project_jenkins` VALUES (106, 'seckill-admin', 'default', 'APPNAME=seckill-admin\r\nBUILD_PATH=\r\nNAMESPACE=default\r\nHUB_ADDR=192.168.145.132\r\n\r\ncd ${APPNAME}\r\n\r\ndocker build -f Dockerfile --rm -t ${APPNAME}:${TAGNAME} .\r\ndocker tag ${APPNAME}:${TAGNAME} $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\ndocker push $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\n', 'git@github.com:jianggaishi/0412go-seckill.git', 'tag', 'V11.0', '2022-04-12 21:56:40', '2022-04-12 21:56:40');
INSERT INTO `project_jenkins` VALUES (107, 'seckill-app', 'default', 'APPNAME=seckill-app\r\nBUILD_PATH=\r\nNAMESPACE=default\r\nHUB_ADDR=192.168.145.132\r\n\r\ncd ${APPNAME}\r\n\r\ndocker build -f Dockerfile --rm -t ${APPNAME}:${TAGNAME} .\r\ndocker tag ${APPNAME}:${TAGNAME} $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\ndocker push $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\n', 'git@github.com:jianggaishi/0412go-seckill.git', 'tag', 'V11.0', '2022-04-12 22:01:49', '2022-04-12 22:01:49');
INSERT INTO `project_jenkins` VALUES (108, 'seckill-core', 'default', 'APPNAME=seckill-core\r\nBUILD_PATH=\r\nNAMESPACE=default\r\nHUB_ADDR=192.168.145.132\r\n\r\ncd ${APPNAME}\r\n\r\ndocker build -f Dockerfile --rm -t ${APPNAME}:${TAGNAME} .\r\ndocker tag ${APPNAME}:${TAGNAME} $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\ndocker push $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\n', 'git@github.com:jianggaishi/0412go-seckill.git', 'tag', 'V11.0', '2022-04-12 22:04:44', '2022-04-12 22:04:44');

-- ----------------------------
-- Table structure for project_template
-- ----------------------------
DROP TABLE IF EXISTS `project_template`;
CREATE TABLE `project_template`  (
  `created_at` datetime(0) DEFAULT NULL,
  `fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `final_template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `state` bigint(20) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project_template
-- ----------------------------
INSERT INTO `project_template` VALUES ('2022-04-04 12:43:03', '{\"name\":\"yamlview\",\"namespace\":\"default\",\"ports\":[{\"name\":\"http-8081\",\"port\":8081,\"protocol\":\"TCP\"}],\"resourceType\":\"service\"}', 'apiVersion: v1\nkind: Service\nmetadata:\n  name: yamlview\n  namespace: default\n  annotations:\n    sidecar.istio.io/inject: \"false\"\n  labels:\n    app: yamlview\nspec:\n  ports: \n    - port: 8081\n      name: http-8081\n      protocol: TCP\n  selector:\n    app: yamlview\n---', 118, 'Service', 60, 0, '2022-04-04 12:43:03');
INSERT INTO `project_template` VALUES ('2022-04-04 12:43:03', '{\"args\":null,\"branch\":\"\",\"build_path\":\"\",\"command\":[\"java\"],\"docker_repo\":\"192.168.145.132\",\"git_addr\":\"git@github.com:jianggaishi/helloworld0302.git\",\"git_type\":\"tag\",\"git_version\":\"V6.0\",\"image\":\"java\",\"language\":\"Java\",\"maxMemory\":\"512Mi\",\"memory\":\"512Mi\",\"mesh\":\"\",\"name\":\"yamlview\",\"namespace\":\"default\",\"pom_file\":\"\",\"ports\":[{\"name\":\"http-8081\",\"port\":8081,\"protocol\":\"TCP\"}],\"replicas\":1,\"resource_type\":\"1\",\"resources\":\"1/512Mi\",\"step\":1}', 'apiVersion: apps/v1\r\nkind: Deployment\r\nmetadata:\r\n  name: yamlview\r\n  namespace: default\r\n  labels:\r\n    app: yamlview\r\n    language: Java\r\nspec:\r\n  minReadySeconds: 10\r\n  replicas: 1\r\n  selector:\r\n    matchLabels:\r\n      app: yamlview\r\n  strategy:\r\n    rollingUpdate:\r\n      maxSurge: 1\r\n      maxUnavailable: 1\r\n    type: RollingUpdate\r\n  template:\r\n    metadata:\r\n      labels:\r\n        app: yamlview\r\n        language: Java\r\n    spec:\r\n      imagePullSecrets:\r\n      - name: regcred\r\n      containers:\r\n      - image: 192.168.145.132/default/yamlview:V6.0\r\n        imagePullPolicy: IfNotPresent\r\n        name: yamlview\r\n        ports: \r\n        - containerPort: 8081\r\n        resources:\r\n          requests:\r\n            memory: 512Mi\r\n          limits:\r\n            memory: 512Mi\r\n        env:\r\n        - name: ENV\r\n          value: prod\r\n        - name: POD_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.name\r\n        - name: POD_NAMESPACE\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.namespace\r\n        - name: INSTANCE_IP\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: status.podIP\r\n        - name: NODE_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: spec.nodeName\r\n        volumeMounts:\r\n        - name: tz-config\r\n          mountPath: /etc/localtime\r\n      volumes:\r\n      - name: \"tz-config\"\r\n        hostPath:\r\n          path: \"/usr/share/zoneinfo/Asia/Shanghai\"', 119, 'Deployment', 60, 0, '2022-04-04 12:43:03');
INSERT INTO `project_template` VALUES ('2022-04-12 21:56:40', '{\"name\":\"seckill-admin\",\"namespace\":\"default\",\"ports\":[{\"name\":\"http-9030\",\"port\":9030,\"protocol\":\"TCP\"}],\"resourceType\":\"service\"}', 'apiVersion: v1\nkind: Service\nmetadata:\n  name: seckill-admin\n  namespace: default\n  annotations:\n    sidecar.istio.io/inject: \"false\"\n  labels:\n    app: seckill-admin\nspec:\n  ports: \n    - port: 9030\n      name: http-9030\n      protocol: TCP\n  selector:\n    app: seckill-admin\n---', 218, 'Service', 109, 1, '2022-04-12 21:56:43');
INSERT INTO `project_template` VALUES ('2022-04-12 21:56:40', '{\"args\":null,\"command\":null,\"git_addr\":\"git@github.com:jianggaishi/0412go-seckill.git\",\"build_path\":\"\",\"git_type\":\"tag\",\"git_version\":\"V11.0\",\"branch\":\"\",\"image\":\"192.168.145.132/default/seckill-admin:V11.0\",\"language\":\"Golang\",\"name\":\"seckill-admin\",\"namespace\":\"default\",\"ports\":[{\"name\":\"http-9030\",\"port\":9030,\"protocol\":\"TCP\"}],\"replicas\":1,\"mesh\":\"\",\"resource_type\":\"1\",\"resources\":\"100m/64Mi\",\"step\":1,\"pom_file\":\"\"}', 'apiVersion: apps/v1\r\nkind: Deployment\r\nmetadata:\r\n  name: seckill-admin\r\n  namespace: default\r\n  labels:\r\n    app: seckill-admin\r\n    language: Golang\r\nspec:\r\n  minReadySeconds: 10\r\n  replicas: 1\r\n  selector:\r\n    matchLabels:\r\n      app: seckill-admin\r\n  strategy:\r\n    rollingUpdate:\r\n      maxSurge: 1\r\n      maxUnavailable: 1\r\n    type: RollingUpdate\r\n  template:\r\n    metadata:\r\n      labels:\r\n        app: seckill-admin\r\n        language: Golang\r\n    spec:\r\n      imagePullSecrets:\r\n      - name: regcred\r\n      containers:\r\n      - image: 192.168.145.132/default/seckill-admin:V11.0\r\n        imagePullPolicy: IfNotPresent\r\n        name: seckill-admin\r\n        ports: \r\n        - containerPort: 9030\r\n        resources:\r\n          requests:\r\n            memory: 64Mi\r\n          limits:\r\n            memory: 64Mi\r\n        env:\r\n        - name: ENV\r\n          value: prod\r\n        - name: POD_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.name\r\n        - name: POD_NAMESPACE\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.namespace\r\n        - name: INSTANCE_IP\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: status.podIP\r\n        - name: NODE_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: spec.nodeName\r\n        volumeMounts:\r\n        - name: tz-config\r\n          mountPath: /etc/localtime\r\n      volumes:\r\n      - name: \"tz-config\"\r\n        hostPath:\r\n          path: \"/usr/share/zoneinfo/Asia/Shanghai\"', 219, 'Deployment', 109, 1, '2022-04-12 21:58:27');
INSERT INTO `project_template` VALUES ('2022-04-12 22:01:49', '{\"name\":\"seckill-app\",\"namespace\":\"default\",\"ports\":[{\"name\":\"http-9031\",\"port\":9031,\"protocol\":\"TCP\"}],\"resourceType\":\"service\"}', 'apiVersion: v1\nkind: Service\nmetadata:\n  name: seckill-app\n  namespace: default\n  annotations:\n    sidecar.istio.io/inject: \"false\"\n  labels:\n    app: seckill-app\nspec:\n  ports: \n    - port: 9031\n      name: http-9031\n      protocol: TCP\n  selector:\n    app: seckill-app\n---', 220, 'Service', 110, 1, '2022-04-12 22:01:52');
INSERT INTO `project_template` VALUES ('2022-04-12 22:01:49', '{\"args\":null,\"command\":null,\"git_addr\":\"git@github.com:jianggaishi/0412go-seckill.git\",\"build_path\":\"\",\"git_type\":\"tag\",\"git_version\":\"V11.0\",\"branch\":\"\",\"image\":\"192.168.145.132/default/seckill-app:V11.0\",\"language\":\"Golang\",\"name\":\"seckill-app\",\"namespace\":\"default\",\"ports\":[{\"name\":\"http-9031\",\"port\":9031,\"protocol\":\"TCP\"}],\"replicas\":1,\"mesh\":\"\",\"resource_type\":\"1\",\"resources\":\"100m/64Mi\",\"step\":1,\"pom_file\":\"\"}', 'apiVersion: apps/v1\r\nkind: Deployment\r\nmetadata:\r\n  name: seckill-app\r\n  namespace: default\r\n  labels:\r\n    app: seckill-app\r\n    language: Golang\r\nspec:\r\n  minReadySeconds: 10\r\n  replicas: 1\r\n  selector:\r\n    matchLabels:\r\n      app: seckill-app\r\n  strategy:\r\n    rollingUpdate:\r\n      maxSurge: 1\r\n      maxUnavailable: 1\r\n    type: RollingUpdate\r\n  template:\r\n    metadata:\r\n      labels:\r\n        app: seckill-app\r\n        language: Golang\r\n    spec:\r\n      imagePullSecrets:\r\n      - name: regcred\r\n      containers:\r\n      - image: 192.168.145.132/default/seckill-app:V11.0\r\n        imagePullPolicy: IfNotPresent\r\n        name: seckill-app\r\n        ports: \r\n        - containerPort: 9031\r\n        resources:\r\n          requests:\r\n            memory: 64Mi\r\n          limits:\r\n            memory: 64Mi\r\n        env:\r\n        - name: ENV\r\n          value: prod\r\n        - name: POD_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.name\r\n        - name: POD_NAMESPACE\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.namespace\r\n        - name: INSTANCE_IP\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: status.podIP\r\n        - name: NODE_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: spec.nodeName\r\n        volumeMounts:\r\n        - name: tz-config\r\n          mountPath: /etc/localtime\r\n      volumes:\r\n      - name: \"tz-config\"\r\n        hostPath:\r\n          path: \"/usr/share/zoneinfo/Asia/Shanghai\"', 221, 'Deployment', 110, 1, '2022-04-12 22:03:32');
INSERT INTO `project_template` VALUES ('2022-04-12 22:04:44', '{\"name\":\"seckill-core\",\"namespace\":\"default\",\"ports\":[{\"name\":\"http-9032\",\"port\":9032,\"protocol\":\"TCP\"}],\"resourceType\":\"service\"}', 'apiVersion: v1\nkind: Service\nmetadata:\n  name: seckill-core\n  namespace: default\n  annotations:\n    sidecar.istio.io/inject: \"false\"\n  labels:\n    app: seckill-core\nspec:\n  ports: \n    - port: 9032\n      name: http-9032\n      protocol: TCP\n  selector:\n    app: seckill-core\n---', 222, 'Service', 111, 1, '2022-04-12 22:04:48');
INSERT INTO `project_template` VALUES ('2022-04-12 22:04:44', '{\"args\":null,\"command\":null,\"git_addr\":\"git@github.com:jianggaishi/0412go-seckill.git\",\"build_path\":\"\",\"git_type\":\"tag\",\"git_version\":\"V11.0\",\"branch\":\"\",\"image\":\"192.168.145.132/default/seckill-core:V11.0\",\"language\":\"Golang\",\"name\":\"seckill-core\",\"namespace\":\"default\",\"ports\":[{\"name\":\"http-9032\",\"port\":9032,\"protocol\":\"TCP\"}],\"replicas\":1,\"mesh\":\"\",\"resource_type\":\"1\",\"resources\":\"100m/64Mi\",\"step\":1,\"pom_file\":\"\"}', 'apiVersion: apps/v1\r\nkind: Deployment\r\nmetadata:\r\n  name: seckill-core\r\n  namespace: default\r\n  labels:\r\n    app: seckill-core\r\n    language: Golang\r\nspec:\r\n  minReadySeconds: 10\r\n  replicas: 1\r\n  selector:\r\n    matchLabels:\r\n      app: seckill-core\r\n  strategy:\r\n    rollingUpdate:\r\n      maxSurge: 1\r\n      maxUnavailable: 1\r\n    type: RollingUpdate\r\n  template:\r\n    metadata:\r\n      labels:\r\n        app: seckill-core\r\n        language: Golang\r\n    spec:\r\n      imagePullSecrets:\r\n      - name: regcred\r\n      containers:\r\n      - image: 192.168.145.132/default/seckill-core:V11.0\r\n        imagePullPolicy: IfNotPresent\r\n        name: seckill-core\r\n        ports: \r\n        - containerPort: 9032\r\n        resources:\r\n          requests:\r\n            memory: 64Mi\r\n          limits:\r\n            memory: 64Mi\r\n        env:\r\n        - name: ENV\r\n          value: prod\r\n        - name: POD_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.name\r\n        - name: POD_NAMESPACE\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.namespace\r\n        - name: INSTANCE_IP\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: status.podIP\r\n        - name: NODE_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: spec.nodeName\r\n        volumeMounts:\r\n        - name: tz-config\r\n          mountPath: /etc/localtime\r\n      volumes:\r\n      - name: \"tz-config\"\r\n        hostPath:\r\n          path: \"/usr/share/zoneinfo/Asia/Shanghai\"', 223, 'Deployment', 111, 1, '2022-04-12 22:06:24');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`  (
  `audit_state` bigint(20) DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publish_state` bigint(20) DEFAULT NULL,
  `step` bigint(20) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`, `namespace`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES (1, '2022-04-04 12:42:44', 'yamlview', 60, 'Java', 1, 'yamlview', 'yamlview', 'default', 0, 2, '2022-04-04 12:43:03');
INSERT INTO `projects` VALUES (3, '2022-04-12 21:56:20', 'seckill-admin', 109, 'Golang', 1, 'seckill-admin', 'seckill-admin', 'default', 1, 2, '2022-04-12 21:56:43');
INSERT INTO `projects` VALUES (3, '2022-04-12 22:01:19', 'seckill-app', 110, 'Golang', 1, 'seckill-app', 'seckill-app', 'default', 1, 2, '2022-04-12 22:01:52');
INSERT INTO `projects` VALUES (3, '2022-04-12 22:03:52', 'seckill-core', 111, 'Golang', 1, 'seckill-core', 'seckill-core', 'default', 1, 2, '2022-04-12 22:04:48');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `created_at` datetime(0) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('2019-01-29 19:09:41', 1, '超级管理员', 1, '2022-03-20 14:41:47', '神', 100);
INSERT INTO `roles` VALUES ('2019-07-17 11:58:37', 2, '运维', 0, '2019-08-01 16:48:07', '管理员', 200);
INSERT INTO `roles` VALUES ('2019-01-29 19:09:41', 3, '部门经理', 1, '2019-07-17 13:41:51', '管理人员', 300);
INSERT INTO `roles` VALUES ('2019-01-29 19:09:41', 4, '项目开发', 1, '2019-08-20 10:52:00', '普通用户', 400);
INSERT INTO `roles` VALUES ('2019-01-29 19:09:41', 5, '查看服务', 1, '2019-08-13 11:26:29', '游客', 500);

-- ----------------------------
-- Table structure for roles_permissionss
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissionss`;
CREATE TABLE `roles_permissionss`  (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_permissionss
-- ----------------------------
INSERT INTO `roles_permissionss` VALUES (1, 1);
INSERT INTO `roles_permissionss` VALUES (1, 2);
INSERT INTO `roles_permissionss` VALUES (1, 3);
INSERT INTO `roles_permissionss` VALUES (1, 4);
INSERT INTO `roles_permissionss` VALUES (1, 5);
INSERT INTO `roles_permissionss` VALUES (1, 6);
INSERT INTO `roles_permissionss` VALUES (1, 7);
INSERT INTO `roles_permissionss` VALUES (1, 9);
INSERT INTO `roles_permissionss` VALUES (1, 10);
INSERT INTO `roles_permissionss` VALUES (1, 12);
INSERT INTO `roles_permissionss` VALUES (1, 13);
INSERT INTO `roles_permissionss` VALUES (1, 14);
INSERT INTO `roles_permissionss` VALUES (1, 15);
INSERT INTO `roles_permissionss` VALUES (1, 16);
INSERT INTO `roles_permissionss` VALUES (1, 17);
INSERT INTO `roles_permissionss` VALUES (1, 18);
INSERT INTO `roles_permissionss` VALUES (1, 19);
INSERT INTO `roles_permissionss` VALUES (1, 20);
INSERT INTO `roles_permissionss` VALUES (1, 21);
INSERT INTO `roles_permissionss` VALUES (1, 22);
INSERT INTO `roles_permissionss` VALUES (1, 23);
INSERT INTO `roles_permissionss` VALUES (1, 24);
INSERT INTO `roles_permissionss` VALUES (1, 25);
INSERT INTO `roles_permissionss` VALUES (1, 26);
INSERT INTO `roles_permissionss` VALUES (1, 27);
INSERT INTO `roles_permissionss` VALUES (1, 28);
INSERT INTO `roles_permissionss` VALUES (1, 29);
INSERT INTO `roles_permissionss` VALUES (1, 30);
INSERT INTO `roles_permissionss` VALUES (1, 31);
INSERT INTO `roles_permissionss` VALUES (1, 32);
INSERT INTO `roles_permissionss` VALUES (1, 33);
INSERT INTO `roles_permissionss` VALUES (1, 34);
INSERT INTO `roles_permissionss` VALUES (1, 35);
INSERT INTO `roles_permissionss` VALUES (1, 36);
INSERT INTO `roles_permissionss` VALUES (1, 37);
INSERT INTO `roles_permissionss` VALUES (1, 38);
INSERT INTO `roles_permissionss` VALUES (1, 39);
INSERT INTO `roles_permissionss` VALUES (1, 40);
INSERT INTO `roles_permissionss` VALUES (1, 41);
INSERT INTO `roles_permissionss` VALUES (1, 42);
INSERT INTO `roles_permissionss` VALUES (1, 43);
INSERT INTO `roles_permissionss` VALUES (1, 44);
INSERT INTO `roles_permissionss` VALUES (1, 45);
INSERT INTO `roles_permissionss` VALUES (1, 46);
INSERT INTO `roles_permissionss` VALUES (1, 47);
INSERT INTO `roles_permissionss` VALUES (1, 48);
INSERT INTO `roles_permissionss` VALUES (1, 49);
INSERT INTO `roles_permissionss` VALUES (1, 50);
INSERT INTO `roles_permissionss` VALUES (1, 51);
INSERT INTO `roles_permissionss` VALUES (1, 52);
INSERT INTO `roles_permissionss` VALUES (1, 53);
INSERT INTO `roles_permissionss` VALUES (1, 54);
INSERT INTO `roles_permissionss` VALUES (1, 55);
INSERT INTO `roles_permissionss` VALUES (1, 56);
INSERT INTO `roles_permissionss` VALUES (1, 57);
INSERT INTO `roles_permissionss` VALUES (1, 58);
INSERT INTO `roles_permissionss` VALUES (1, 59);
INSERT INTO `roles_permissionss` VALUES (1, 60);
INSERT INTO `roles_permissionss` VALUES (1, 61);
INSERT INTO `roles_permissionss` VALUES (1, 62);
INSERT INTO `roles_permissionss` VALUES (1, 63);
INSERT INTO `roles_permissionss` VALUES (1, 64);
INSERT INTO `roles_permissionss` VALUES (1, 65);
INSERT INTO `roles_permissionss` VALUES (1, 66);
INSERT INTO `roles_permissionss` VALUES (1, 67);
INSERT INTO `roles_permissionss` VALUES (1, 68);
INSERT INTO `roles_permissionss` VALUES (1, 69);
INSERT INTO `roles_permissionss` VALUES (1, 70);
INSERT INTO `roles_permissionss` VALUES (1, 71);
INSERT INTO `roles_permissionss` VALUES (1, 72);
INSERT INTO `roles_permissionss` VALUES (1, 73);
INSERT INTO `roles_permissionss` VALUES (1, 74);
INSERT INTO `roles_permissionss` VALUES (1, 75);
INSERT INTO `roles_permissionss` VALUES (1, 76);
INSERT INTO `roles_permissionss` VALUES (1, 77);
INSERT INTO `roles_permissionss` VALUES (1, 78);
INSERT INTO `roles_permissionss` VALUES (1, 79);
INSERT INTO `roles_permissionss` VALUES (1, 80);
INSERT INTO `roles_permissionss` VALUES (1, 81);
INSERT INTO `roles_permissionss` VALUES (1, 82);
INSERT INTO `roles_permissionss` VALUES (1, 83);
INSERT INTO `roles_permissionss` VALUES (1, 84);
INSERT INTO `roles_permissionss` VALUES (1, 85);
INSERT INTO `roles_permissionss` VALUES (1, 86);
INSERT INTO `roles_permissionss` VALUES (1, 87);
INSERT INTO `roles_permissionss` VALUES (1, 88);
INSERT INTO `roles_permissionss` VALUES (1, 89);
INSERT INTO `roles_permissionss` VALUES (1, 90);
INSERT INTO `roles_permissionss` VALUES (1, 91);
INSERT INTO `roles_permissionss` VALUES (1, 92);
INSERT INTO `roles_permissionss` VALUES (1, 93);
INSERT INTO `roles_permissionss` VALUES (1, 94);
INSERT INTO `roles_permissionss` VALUES (1, 95);
INSERT INTO `roles_permissionss` VALUES (1, 96);
INSERT INTO `roles_permissionss` VALUES (1, 97);
INSERT INTO `roles_permissionss` VALUES (1, 98);
INSERT INTO `roles_permissionss` VALUES (1, 99);
INSERT INTO `roles_permissionss` VALUES (1, 100);
INSERT INTO `roles_permissionss` VALUES (1, 101);
INSERT INTO `roles_permissionss` VALUES (1, 102);
INSERT INTO `roles_permissionss` VALUES (1, 103);
INSERT INTO `roles_permissionss` VALUES (1, 104);
INSERT INTO `roles_permissionss` VALUES (1, 105);
INSERT INTO `roles_permissionss` VALUES (1, 106);
INSERT INTO `roles_permissionss` VALUES (1, 107);
INSERT INTO `roles_permissionss` VALUES (1, 108);
INSERT INTO `roles_permissionss` VALUES (1, 109);
INSERT INTO `roles_permissionss` VALUES (1, 110);
INSERT INTO `roles_permissionss` VALUES (1, 111);
INSERT INTO `roles_permissionss` VALUES (1, 112);
INSERT INTO `roles_permissionss` VALUES (1, 113);
INSERT INTO `roles_permissionss` VALUES (1, 114);
INSERT INTO `roles_permissionss` VALUES (1, 115);
INSERT INTO `roles_permissionss` VALUES (1, 116);
INSERT INTO `roles_permissionss` VALUES (1, 117);
INSERT INTO `roles_permissionss` VALUES (1, 118);
INSERT INTO `roles_permissionss` VALUES (1, 119);
INSERT INTO `roles_permissionss` VALUES (1, 120);
INSERT INTO `roles_permissionss` VALUES (1, 121);
INSERT INTO `roles_permissionss` VALUES (1, 122);
INSERT INTO `roles_permissionss` VALUES (1, 123);
INSERT INTO `roles_permissionss` VALUES (1, 124);
INSERT INTO `roles_permissionss` VALUES (1, 127);
INSERT INTO `roles_permissionss` VALUES (1, 128);
INSERT INTO `roles_permissionss` VALUES (1, 129);
INSERT INTO `roles_permissionss` VALUES (1, 130);
INSERT INTO `roles_permissionss` VALUES (1, 131);
INSERT INTO `roles_permissionss` VALUES (1, 132);
INSERT INTO `roles_permissionss` VALUES (1, 135);
INSERT INTO `roles_permissionss` VALUES (1, 136);
INSERT INTO `roles_permissionss` VALUES (1, 137);
INSERT INTO `roles_permissionss` VALUES (1, 138);
INSERT INTO `roles_permissionss` VALUES (1, 139);
INSERT INTO `roles_permissionss` VALUES (1, 140);
INSERT INTO `roles_permissionss` VALUES (1, 141);
INSERT INTO `roles_permissionss` VALUES (1, 142);
INSERT INTO `roles_permissionss` VALUES (1, 143);
INSERT INTO `roles_permissionss` VALUES (1, 144);
INSERT INTO `roles_permissionss` VALUES (1, 145);
INSERT INTO `roles_permissionss` VALUES (1, 147);
INSERT INTO `roles_permissionss` VALUES (1, 148);
INSERT INTO `roles_permissionss` VALUES (1, 149);
INSERT INTO `roles_permissionss` VALUES (1, 151);
INSERT INTO `roles_permissionss` VALUES (1, 152);
INSERT INTO `roles_permissionss` VALUES (1, 153);
INSERT INTO `roles_permissionss` VALUES (1, 154);
INSERT INTO `roles_permissionss` VALUES (1, 155);
INSERT INTO `roles_permissionss` VALUES (1, 156);
INSERT INTO `roles_permissionss` VALUES (1, 157);
INSERT INTO `roles_permissionss` VALUES (1, 158);
INSERT INTO `roles_permissionss` VALUES (1, 159);
INSERT INTO `roles_permissionss` VALUES (1, 160);
INSERT INTO `roles_permissionss` VALUES (1, 161);
INSERT INTO `roles_permissionss` VALUES (1, 163);
INSERT INTO `roles_permissionss` VALUES (1, 166);
INSERT INTO `roles_permissionss` VALUES (1, 167);
INSERT INTO `roles_permissionss` VALUES (1, 168);
INSERT INTO `roles_permissionss` VALUES (1, 169);
INSERT INTO `roles_permissionss` VALUES (1, 170);
INSERT INTO `roles_permissionss` VALUES (1, 171);
INSERT INTO `roles_permissionss` VALUES (1, 172);
INSERT INTO `roles_permissionss` VALUES (1, 173);
INSERT INTO `roles_permissionss` VALUES (1, 174);
INSERT INTO `roles_permissionss` VALUES (1, 175);
INSERT INTO `roles_permissionss` VALUES (1, 176);
INSERT INTO `roles_permissionss` VALUES (1, 177);
INSERT INTO `roles_permissionss` VALUES (1, 178);
INSERT INTO `roles_permissionss` VALUES (1, 179);
INSERT INTO `roles_permissionss` VALUES (1, 180);
INSERT INTO `roles_permissionss` VALUES (1, 181);
INSERT INTO `roles_permissionss` VALUES (1, 182);
INSERT INTO `roles_permissionss` VALUES (1, 183);
INSERT INTO `roles_permissionss` VALUES (1, 184);
INSERT INTO `roles_permissionss` VALUES (1, 185);
INSERT INTO `roles_permissionss` VALUES (1, 186);
INSERT INTO `roles_permissionss` VALUES (1, 187);
INSERT INTO `roles_permissionss` VALUES (1, 188);
INSERT INTO `roles_permissionss` VALUES (1, 189);
INSERT INTO `roles_permissionss` VALUES (1, 190);
INSERT INTO `roles_permissionss` VALUES (1, 191);
INSERT INTO `roles_permissionss` VALUES (1, 192);
INSERT INTO `roles_permissionss` VALUES (1, 193);
INSERT INTO `roles_permissionss` VALUES (1, 194);
INSERT INTO `roles_permissionss` VALUES (1, 195);
INSERT INTO `roles_permissionss` VALUES (1, 196);
INSERT INTO `roles_permissionss` VALUES (1, 197);
INSERT INTO `roles_permissionss` VALUES (1, 198);
INSERT INTO `roles_permissionss` VALUES (1, 199);
INSERT INTO `roles_permissionss` VALUES (1, 200);
INSERT INTO `roles_permissionss` VALUES (1, 201);
INSERT INTO `roles_permissionss` VALUES (1, 202);
INSERT INTO `roles_permissionss` VALUES (1, 203);
INSERT INTO `roles_permissionss` VALUES (1, 204);
INSERT INTO `roles_permissionss` VALUES (1, 205);
INSERT INTO `roles_permissionss` VALUES (1, 206);
INSERT INTO `roles_permissionss` VALUES (1, 207);
INSERT INTO `roles_permissionss` VALUES (1, 209);
INSERT INTO `roles_permissionss` VALUES (1, 211);
INSERT INTO `roles_permissionss` VALUES (1, 212);
INSERT INTO `roles_permissionss` VALUES (1, 213);
INSERT INTO `roles_permissionss` VALUES (1, 214);
INSERT INTO `roles_permissionss` VALUES (1, 215);
INSERT INTO `roles_permissionss` VALUES (1, 216);
INSERT INTO `roles_permissionss` VALUES (1, 217);
INSERT INTO `roles_permissionss` VALUES (1, 218);
INSERT INTO `roles_permissionss` VALUES (1, 219);
INSERT INTO `roles_permissionss` VALUES (1, 220);
INSERT INTO `roles_permissionss` VALUES (1, 221);
INSERT INTO `roles_permissionss` VALUES (1, 225);
INSERT INTO `roles_permissionss` VALUES (1, 226);
INSERT INTO `roles_permissionss` VALUES (1, 227);
INSERT INTO `roles_permissionss` VALUES (1, 228);
INSERT INTO `roles_permissionss` VALUES (1, 229);
INSERT INTO `roles_permissionss` VALUES (1, 230);
INSERT INTO `roles_permissionss` VALUES (1, 231);
INSERT INTO `roles_permissionss` VALUES (1, 233);
INSERT INTO `roles_permissionss` VALUES (1, 234);
INSERT INTO `roles_permissionss` VALUES (1, 235);
INSERT INTO `roles_permissionss` VALUES (1, 274);
INSERT INTO `roles_permissionss` VALUES (1, 275);
INSERT INTO `roles_permissionss` VALUES (1, 276);
INSERT INTO `roles_permissionss` VALUES (1, 277);
INSERT INTO `roles_permissionss` VALUES (1, 278);
INSERT INTO `roles_permissionss` VALUES (1, 279);
INSERT INTO `roles_permissionss` VALUES (1, 280);
INSERT INTO `roles_permissionss` VALUES (1, 281);
INSERT INTO `roles_permissionss` VALUES (1, 282);
INSERT INTO `roles_permissionss` VALUES (1, 283);
INSERT INTO `roles_permissionss` VALUES (1, 284);
INSERT INTO `roles_permissionss` VALUES (1, 285);
INSERT INTO `roles_permissionss` VALUES (1, 286);
INSERT INTO `roles_permissionss` VALUES (1, 287);
INSERT INTO `roles_permissionss` VALUES (1, 288);
INSERT INTO `roles_permissionss` VALUES (1, 289);
INSERT INTO `roles_permissionss` VALUES (1, 290);
INSERT INTO `roles_permissionss` VALUES (1, 291);
INSERT INTO `roles_permissionss` VALUES (1, 292);
INSERT INTO `roles_permissionss` VALUES (1, 293);
INSERT INTO `roles_permissionss` VALUES (1, 294);
INSERT INTO `roles_permissionss` VALUES (1, 295);
INSERT INTO `roles_permissionss` VALUES (1, 296);
INSERT INTO `roles_permissionss` VALUES (1, 297);
INSERT INTO `roles_permissionss` VALUES (1, 298);
INSERT INTO `roles_permissionss` VALUES (1, 299);
INSERT INTO `roles_permissionss` VALUES (1, 300);
INSERT INTO `roles_permissionss` VALUES (1, 301);
INSERT INTO `roles_permissionss` VALUES (1, 302);
INSERT INTO `roles_permissionss` VALUES (1, 303);
INSERT INTO `roles_permissionss` VALUES (1, 304);
INSERT INTO `roles_permissionss` VALUES (1, 305);
INSERT INTO `roles_permissionss` VALUES (1, 306);
INSERT INTO `roles_permissionss` VALUES (1, 307);
INSERT INTO `roles_permissionss` VALUES (1, 308);
INSERT INTO `roles_permissionss` VALUES (1, 309);
INSERT INTO `roles_permissionss` VALUES (1, 310);
INSERT INTO `roles_permissionss` VALUES (1, 311);
INSERT INTO `roles_permissionss` VALUES (1, 312);
INSERT INTO `roles_permissionss` VALUES (1, 313);
INSERT INTO `roles_permissionss` VALUES (1, 314);
INSERT INTO `roles_permissionss` VALUES (1, 315);
INSERT INTO `roles_permissionss` VALUES (1, 316);
INSERT INTO `roles_permissionss` VALUES (1, 317);
INSERT INTO `roles_permissionss` VALUES (1, 318);
INSERT INTO `roles_permissionss` VALUES (1, 319);
INSERT INTO `roles_permissionss` VALUES (1, 320);
INSERT INTO `roles_permissionss` VALUES (1, 321);
INSERT INTO `roles_permissionss` VALUES (1, 322);
INSERT INTO `roles_permissionss` VALUES (1, 323);
INSERT INTO `roles_permissionss` VALUES (1, 324);
INSERT INTO `roles_permissionss` VALUES (1, 325);
INSERT INTO `roles_permissionss` VALUES (1, 326);
INSERT INTO `roles_permissionss` VALUES (1, 327);
INSERT INTO `roles_permissionss` VALUES (1, 328);
INSERT INTO `roles_permissionss` VALUES (2, 1);
INSERT INTO `roles_permissionss` VALUES (2, 2);
INSERT INTO `roles_permissionss` VALUES (2, 3);
INSERT INTO `roles_permissionss` VALUES (2, 4);
INSERT INTO `roles_permissionss` VALUES (2, 5);
INSERT INTO `roles_permissionss` VALUES (2, 9);
INSERT INTO `roles_permissionss` VALUES (2, 10);
INSERT INTO `roles_permissionss` VALUES (2, 18);
INSERT INTO `roles_permissionss` VALUES (2, 21);
INSERT INTO `roles_permissionss` VALUES (2, 22);
INSERT INTO `roles_permissionss` VALUES (2, 23);
INSERT INTO `roles_permissionss` VALUES (2, 24);
INSERT INTO `roles_permissionss` VALUES (2, 25);
INSERT INTO `roles_permissionss` VALUES (2, 26);
INSERT INTO `roles_permissionss` VALUES (2, 27);
INSERT INTO `roles_permissionss` VALUES (2, 28);
INSERT INTO `roles_permissionss` VALUES (2, 34);
INSERT INTO `roles_permissionss` VALUES (2, 35);
INSERT INTO `roles_permissionss` VALUES (2, 36);
INSERT INTO `roles_permissionss` VALUES (2, 37);
INSERT INTO `roles_permissionss` VALUES (2, 38);
INSERT INTO `roles_permissionss` VALUES (2, 39);
INSERT INTO `roles_permissionss` VALUES (2, 40);
INSERT INTO `roles_permissionss` VALUES (2, 41);
INSERT INTO `roles_permissionss` VALUES (2, 42);
INSERT INTO `roles_permissionss` VALUES (2, 43);
INSERT INTO `roles_permissionss` VALUES (2, 44);
INSERT INTO `roles_permissionss` VALUES (2, 45);
INSERT INTO `roles_permissionss` VALUES (2, 46);
INSERT INTO `roles_permissionss` VALUES (2, 47);
INSERT INTO `roles_permissionss` VALUES (2, 48);
INSERT INTO `roles_permissionss` VALUES (2, 49);
INSERT INTO `roles_permissionss` VALUES (2, 50);
INSERT INTO `roles_permissionss` VALUES (2, 51);
INSERT INTO `roles_permissionss` VALUES (2, 52);
INSERT INTO `roles_permissionss` VALUES (2, 53);
INSERT INTO `roles_permissionss` VALUES (2, 54);
INSERT INTO `roles_permissionss` VALUES (2, 55);
INSERT INTO `roles_permissionss` VALUES (2, 56);
INSERT INTO `roles_permissionss` VALUES (2, 57);
INSERT INTO `roles_permissionss` VALUES (2, 58);
INSERT INTO `roles_permissionss` VALUES (2, 59);
INSERT INTO `roles_permissionss` VALUES (2, 60);
INSERT INTO `roles_permissionss` VALUES (2, 61);
INSERT INTO `roles_permissionss` VALUES (2, 62);
INSERT INTO `roles_permissionss` VALUES (2, 63);
INSERT INTO `roles_permissionss` VALUES (2, 64);
INSERT INTO `roles_permissionss` VALUES (2, 65);
INSERT INTO `roles_permissionss` VALUES (2, 66);
INSERT INTO `roles_permissionss` VALUES (2, 67);
INSERT INTO `roles_permissionss` VALUES (2, 68);
INSERT INTO `roles_permissionss` VALUES (2, 69);
INSERT INTO `roles_permissionss` VALUES (2, 70);
INSERT INTO `roles_permissionss` VALUES (2, 71);
INSERT INTO `roles_permissionss` VALUES (2, 72);
INSERT INTO `roles_permissionss` VALUES (2, 73);
INSERT INTO `roles_permissionss` VALUES (2, 74);
INSERT INTO `roles_permissionss` VALUES (2, 75);
INSERT INTO `roles_permissionss` VALUES (2, 76);
INSERT INTO `roles_permissionss` VALUES (2, 77);
INSERT INTO `roles_permissionss` VALUES (2, 78);
INSERT INTO `roles_permissionss` VALUES (2, 79);
INSERT INTO `roles_permissionss` VALUES (2, 80);
INSERT INTO `roles_permissionss` VALUES (2, 81);
INSERT INTO `roles_permissionss` VALUES (2, 82);
INSERT INTO `roles_permissionss` VALUES (2, 83);
INSERT INTO `roles_permissionss` VALUES (2, 84);
INSERT INTO `roles_permissionss` VALUES (2, 85);
INSERT INTO `roles_permissionss` VALUES (2, 86);
INSERT INTO `roles_permissionss` VALUES (2, 87);
INSERT INTO `roles_permissionss` VALUES (2, 88);
INSERT INTO `roles_permissionss` VALUES (2, 89);
INSERT INTO `roles_permissionss` VALUES (2, 90);
INSERT INTO `roles_permissionss` VALUES (2, 91);
INSERT INTO `roles_permissionss` VALUES (2, 92);
INSERT INTO `roles_permissionss` VALUES (2, 93);
INSERT INTO `roles_permissionss` VALUES (2, 101);
INSERT INTO `roles_permissionss` VALUES (2, 102);
INSERT INTO `roles_permissionss` VALUES (2, 103);
INSERT INTO `roles_permissionss` VALUES (2, 104);
INSERT INTO `roles_permissionss` VALUES (2, 105);
INSERT INTO `roles_permissionss` VALUES (2, 106);
INSERT INTO `roles_permissionss` VALUES (2, 110);
INSERT INTO `roles_permissionss` VALUES (2, 112);
INSERT INTO `roles_permissionss` VALUES (2, 113);
INSERT INTO `roles_permissionss` VALUES (2, 114);
INSERT INTO `roles_permissionss` VALUES (2, 115);
INSERT INTO `roles_permissionss` VALUES (2, 116);
INSERT INTO `roles_permissionss` VALUES (2, 117);
INSERT INTO `roles_permissionss` VALUES (2, 118);
INSERT INTO `roles_permissionss` VALUES (2, 119);
INSERT INTO `roles_permissionss` VALUES (2, 120);
INSERT INTO `roles_permissionss` VALUES (2, 121);
INSERT INTO `roles_permissionss` VALUES (2, 123);
INSERT INTO `roles_permissionss` VALUES (2, 124);
INSERT INTO `roles_permissionss` VALUES (2, 138);
INSERT INTO `roles_permissionss` VALUES (2, 139);
INSERT INTO `roles_permissionss` VALUES (2, 140);
INSERT INTO `roles_permissionss` VALUES (2, 142);
INSERT INTO `roles_permissionss` VALUES (2, 144);
INSERT INTO `roles_permissionss` VALUES (2, 145);
INSERT INTO `roles_permissionss` VALUES (2, 152);
INSERT INTO `roles_permissionss` VALUES (2, 153);
INSERT INTO `roles_permissionss` VALUES (2, 154);
INSERT INTO `roles_permissionss` VALUES (2, 155);
INSERT INTO `roles_permissionss` VALUES (2, 156);
INSERT INTO `roles_permissionss` VALUES (2, 157);
INSERT INTO `roles_permissionss` VALUES (2, 158);
INSERT INTO `roles_permissionss` VALUES (2, 159);
INSERT INTO `roles_permissionss` VALUES (2, 166);
INSERT INTO `roles_permissionss` VALUES (2, 167);
INSERT INTO `roles_permissionss` VALUES (2, 169);
INSERT INTO `roles_permissionss` VALUES (2, 170);
INSERT INTO `roles_permissionss` VALUES (2, 171);
INSERT INTO `roles_permissionss` VALUES (2, 172);
INSERT INTO `roles_permissionss` VALUES (2, 173);
INSERT INTO `roles_permissionss` VALUES (2, 174);
INSERT INTO `roles_permissionss` VALUES (2, 175);
INSERT INTO `roles_permissionss` VALUES (2, 176);
INSERT INTO `roles_permissionss` VALUES (2, 177);
INSERT INTO `roles_permissionss` VALUES (2, 178);
INSERT INTO `roles_permissionss` VALUES (2, 179);
INSERT INTO `roles_permissionss` VALUES (2, 180);
INSERT INTO `roles_permissionss` VALUES (2, 181);
INSERT INTO `roles_permissionss` VALUES (2, 183);
INSERT INTO `roles_permissionss` VALUES (2, 184);
INSERT INTO `roles_permissionss` VALUES (2, 185);
INSERT INTO `roles_permissionss` VALUES (2, 186);
INSERT INTO `roles_permissionss` VALUES (2, 187);
INSERT INTO `roles_permissionss` VALUES (2, 188);
INSERT INTO `roles_permissionss` VALUES (2, 189);
INSERT INTO `roles_permissionss` VALUES (2, 190);
INSERT INTO `roles_permissionss` VALUES (2, 191);
INSERT INTO `roles_permissionss` VALUES (2, 192);
INSERT INTO `roles_permissionss` VALUES (2, 193);
INSERT INTO `roles_permissionss` VALUES (2, 195);
INSERT INTO `roles_permissionss` VALUES (2, 204);
INSERT INTO `roles_permissionss` VALUES (2, 205);
INSERT INTO `roles_permissionss` VALUES (2, 206);
INSERT INTO `roles_permissionss` VALUES (2, 207);
INSERT INTO `roles_permissionss` VALUES (2, 209);
INSERT INTO `roles_permissionss` VALUES (2, 211);
INSERT INTO `roles_permissionss` VALUES (2, 212);
INSERT INTO `roles_permissionss` VALUES (2, 213);
INSERT INTO `roles_permissionss` VALUES (2, 214);
INSERT INTO `roles_permissionss` VALUES (2, 216);
INSERT INTO `roles_permissionss` VALUES (2, 217);
INSERT INTO `roles_permissionss` VALUES (2, 218);
INSERT INTO `roles_permissionss` VALUES (2, 219);
INSERT INTO `roles_permissionss` VALUES (2, 220);
INSERT INTO `roles_permissionss` VALUES (2, 221);
INSERT INTO `roles_permissionss` VALUES (2, 222);
INSERT INTO `roles_permissionss` VALUES (2, 223);
INSERT INTO `roles_permissionss` VALUES (2, 224);
INSERT INTO `roles_permissionss` VALUES (2, 225);
INSERT INTO `roles_permissionss` VALUES (2, 226);
INSERT INTO `roles_permissionss` VALUES (2, 227);
INSERT INTO `roles_permissionss` VALUES (2, 230);
INSERT INTO `roles_permissionss` VALUES (2, 231);
INSERT INTO `roles_permissionss` VALUES (2, 233);
INSERT INTO `roles_permissionss` VALUES (2, 234);
INSERT INTO `roles_permissionss` VALUES (2, 235);
INSERT INTO `roles_permissionss` VALUES (2, 241);
INSERT INTO `roles_permissionss` VALUES (2, 242);
INSERT INTO `roles_permissionss` VALUES (2, 243);
INSERT INTO `roles_permissionss` VALUES (2, 244);
INSERT INTO `roles_permissionss` VALUES (2, 245);
INSERT INTO `roles_permissionss` VALUES (2, 246);
INSERT INTO `roles_permissionss` VALUES (2, 248);
INSERT INTO `roles_permissionss` VALUES (2, 249);
INSERT INTO `roles_permissionss` VALUES (2, 253);
INSERT INTO `roles_permissionss` VALUES (2, 254);
INSERT INTO `roles_permissionss` VALUES (2, 255);
INSERT INTO `roles_permissionss` VALUES (2, 256);
INSERT INTO `roles_permissionss` VALUES (2, 257);
INSERT INTO `roles_permissionss` VALUES (2, 260);
INSERT INTO `roles_permissionss` VALUES (2, 261);
INSERT INTO `roles_permissionss` VALUES (2, 262);
INSERT INTO `roles_permissionss` VALUES (2, 263);
INSERT INTO `roles_permissionss` VALUES (2, 265);
INSERT INTO `roles_permissionss` VALUES (2, 266);
INSERT INTO `roles_permissionss` VALUES (2, 267);
INSERT INTO `roles_permissionss` VALUES (2, 273);
INSERT INTO `roles_permissionss` VALUES (3, 1);
INSERT INTO `roles_permissionss` VALUES (3, 2);
INSERT INTO `roles_permissionss` VALUES (3, 3);
INSERT INTO `roles_permissionss` VALUES (3, 9);
INSERT INTO `roles_permissionss` VALUES (3, 10);
INSERT INTO `roles_permissionss` VALUES (3, 18);
INSERT INTO `roles_permissionss` VALUES (3, 19);
INSERT INTO `roles_permissionss` VALUES (3, 21);
INSERT INTO `roles_permissionss` VALUES (3, 23);
INSERT INTO `roles_permissionss` VALUES (3, 35);
INSERT INTO `roles_permissionss` VALUES (3, 41);
INSERT INTO `roles_permissionss` VALUES (3, 42);
INSERT INTO `roles_permissionss` VALUES (3, 43);
INSERT INTO `roles_permissionss` VALUES (3, 44);
INSERT INTO `roles_permissionss` VALUES (3, 45);
INSERT INTO `roles_permissionss` VALUES (3, 46);
INSERT INTO `roles_permissionss` VALUES (3, 47);
INSERT INTO `roles_permissionss` VALUES (3, 48);
INSERT INTO `roles_permissionss` VALUES (3, 49);
INSERT INTO `roles_permissionss` VALUES (3, 50);
INSERT INTO `roles_permissionss` VALUES (3, 51);
INSERT INTO `roles_permissionss` VALUES (3, 52);
INSERT INTO `roles_permissionss` VALUES (3, 53);
INSERT INTO `roles_permissionss` VALUES (3, 54);
INSERT INTO `roles_permissionss` VALUES (3, 55);
INSERT INTO `roles_permissionss` VALUES (3, 56);
INSERT INTO `roles_permissionss` VALUES (3, 57);
INSERT INTO `roles_permissionss` VALUES (3, 58);
INSERT INTO `roles_permissionss` VALUES (3, 59);
INSERT INTO `roles_permissionss` VALUES (3, 60);
INSERT INTO `roles_permissionss` VALUES (3, 61);
INSERT INTO `roles_permissionss` VALUES (3, 62);
INSERT INTO `roles_permissionss` VALUES (3, 63);
INSERT INTO `roles_permissionss` VALUES (3, 64);
INSERT INTO `roles_permissionss` VALUES (3, 65);
INSERT INTO `roles_permissionss` VALUES (3, 66);
INSERT INTO `roles_permissionss` VALUES (3, 67);
INSERT INTO `roles_permissionss` VALUES (3, 68);
INSERT INTO `roles_permissionss` VALUES (3, 69);
INSERT INTO `roles_permissionss` VALUES (3, 70);
INSERT INTO `roles_permissionss` VALUES (3, 71);
INSERT INTO `roles_permissionss` VALUES (3, 72);
INSERT INTO `roles_permissionss` VALUES (3, 73);
INSERT INTO `roles_permissionss` VALUES (3, 74);
INSERT INTO `roles_permissionss` VALUES (3, 75);
INSERT INTO `roles_permissionss` VALUES (3, 76);
INSERT INTO `roles_permissionss` VALUES (3, 77);
INSERT INTO `roles_permissionss` VALUES (3, 78);
INSERT INTO `roles_permissionss` VALUES (3, 79);
INSERT INTO `roles_permissionss` VALUES (3, 80);
INSERT INTO `roles_permissionss` VALUES (3, 81);
INSERT INTO `roles_permissionss` VALUES (3, 82);
INSERT INTO `roles_permissionss` VALUES (3, 83);
INSERT INTO `roles_permissionss` VALUES (3, 84);
INSERT INTO `roles_permissionss` VALUES (3, 85);
INSERT INTO `roles_permissionss` VALUES (3, 86);
INSERT INTO `roles_permissionss` VALUES (3, 87);
INSERT INTO `roles_permissionss` VALUES (3, 88);
INSERT INTO `roles_permissionss` VALUES (3, 89);
INSERT INTO `roles_permissionss` VALUES (3, 90);
INSERT INTO `roles_permissionss` VALUES (3, 91);
INSERT INTO `roles_permissionss` VALUES (3, 92);
INSERT INTO `roles_permissionss` VALUES (3, 93);
INSERT INTO `roles_permissionss` VALUES (3, 101);
INSERT INTO `roles_permissionss` VALUES (3, 102);
INSERT INTO `roles_permissionss` VALUES (3, 103);
INSERT INTO `roles_permissionss` VALUES (3, 104);
INSERT INTO `roles_permissionss` VALUES (3, 105);
INSERT INTO `roles_permissionss` VALUES (3, 106);
INSERT INTO `roles_permissionss` VALUES (3, 110);
INSERT INTO `roles_permissionss` VALUES (3, 112);
INSERT INTO `roles_permissionss` VALUES (3, 113);
INSERT INTO `roles_permissionss` VALUES (3, 114);
INSERT INTO `roles_permissionss` VALUES (3, 115);
INSERT INTO `roles_permissionss` VALUES (3, 116);
INSERT INTO `roles_permissionss` VALUES (3, 117);
INSERT INTO `roles_permissionss` VALUES (3, 118);
INSERT INTO `roles_permissionss` VALUES (3, 119);
INSERT INTO `roles_permissionss` VALUES (3, 120);
INSERT INTO `roles_permissionss` VALUES (3, 121);
INSERT INTO `roles_permissionss` VALUES (3, 123);
INSERT INTO `roles_permissionss` VALUES (3, 124);
INSERT INTO `roles_permissionss` VALUES (3, 138);
INSERT INTO `roles_permissionss` VALUES (3, 152);
INSERT INTO `roles_permissionss` VALUES (3, 153);
INSERT INTO `roles_permissionss` VALUES (3, 154);
INSERT INTO `roles_permissionss` VALUES (3, 155);
INSERT INTO `roles_permissionss` VALUES (3, 156);
INSERT INTO `roles_permissionss` VALUES (3, 157);
INSERT INTO `roles_permissionss` VALUES (3, 158);
INSERT INTO `roles_permissionss` VALUES (3, 159);
INSERT INTO `roles_permissionss` VALUES (3, 166);
INSERT INTO `roles_permissionss` VALUES (3, 167);
INSERT INTO `roles_permissionss` VALUES (3, 169);
INSERT INTO `roles_permissionss` VALUES (3, 170);
INSERT INTO `roles_permissionss` VALUES (3, 171);
INSERT INTO `roles_permissionss` VALUES (3, 172);
INSERT INTO `roles_permissionss` VALUES (3, 173);
INSERT INTO `roles_permissionss` VALUES (3, 174);
INSERT INTO `roles_permissionss` VALUES (3, 175);
INSERT INTO `roles_permissionss` VALUES (3, 176);
INSERT INTO `roles_permissionss` VALUES (3, 177);
INSERT INTO `roles_permissionss` VALUES (3, 178);
INSERT INTO `roles_permissionss` VALUES (3, 179);
INSERT INTO `roles_permissionss` VALUES (3, 180);
INSERT INTO `roles_permissionss` VALUES (3, 181);
INSERT INTO `roles_permissionss` VALUES (3, 183);
INSERT INTO `roles_permissionss` VALUES (3, 184);
INSERT INTO `roles_permissionss` VALUES (3, 185);
INSERT INTO `roles_permissionss` VALUES (3, 186);
INSERT INTO `roles_permissionss` VALUES (3, 187);
INSERT INTO `roles_permissionss` VALUES (3, 188);
INSERT INTO `roles_permissionss` VALUES (3, 189);
INSERT INTO `roles_permissionss` VALUES (3, 190);
INSERT INTO `roles_permissionss` VALUES (3, 191);
INSERT INTO `roles_permissionss` VALUES (3, 192);
INSERT INTO `roles_permissionss` VALUES (3, 193);
INSERT INTO `roles_permissionss` VALUES (3, 195);
INSERT INTO `roles_permissionss` VALUES (3, 204);
INSERT INTO `roles_permissionss` VALUES (3, 205);
INSERT INTO `roles_permissionss` VALUES (3, 206);
INSERT INTO `roles_permissionss` VALUES (3, 207);
INSERT INTO `roles_permissionss` VALUES (3, 209);
INSERT INTO `roles_permissionss` VALUES (3, 211);
INSERT INTO `roles_permissionss` VALUES (3, 212);
INSERT INTO `roles_permissionss` VALUES (3, 213);
INSERT INTO `roles_permissionss` VALUES (3, 214);
INSERT INTO `roles_permissionss` VALUES (3, 216);
INSERT INTO `roles_permissionss` VALUES (3, 217);
INSERT INTO `roles_permissionss` VALUES (3, 218);
INSERT INTO `roles_permissionss` VALUES (3, 219);
INSERT INTO `roles_permissionss` VALUES (3, 220);
INSERT INTO `roles_permissionss` VALUES (3, 221);
INSERT INTO `roles_permissionss` VALUES (3, 225);
INSERT INTO `roles_permissionss` VALUES (3, 226);
INSERT INTO `roles_permissionss` VALUES (3, 227);
INSERT INTO `roles_permissionss` VALUES (3, 230);
INSERT INTO `roles_permissionss` VALUES (3, 231);
INSERT INTO `roles_permissionss` VALUES (3, 233);
INSERT INTO `roles_permissionss` VALUES (3, 234);
INSERT INTO `roles_permissionss` VALUES (3, 235);
INSERT INTO `roles_permissionss` VALUES (3, 241);
INSERT INTO `roles_permissionss` VALUES (3, 242);
INSERT INTO `roles_permissionss` VALUES (3, 243);
INSERT INTO `roles_permissionss` VALUES (3, 244);
INSERT INTO `roles_permissionss` VALUES (3, 245);
INSERT INTO `roles_permissionss` VALUES (3, 246);
INSERT INTO `roles_permissionss` VALUES (3, 248);
INSERT INTO `roles_permissionss` VALUES (3, 249);
INSERT INTO `roles_permissionss` VALUES (3, 250);
INSERT INTO `roles_permissionss` VALUES (3, 251);
INSERT INTO `roles_permissionss` VALUES (3, 252);
INSERT INTO `roles_permissionss` VALUES (3, 253);
INSERT INTO `roles_permissionss` VALUES (3, 254);
INSERT INTO `roles_permissionss` VALUES (3, 255);
INSERT INTO `roles_permissionss` VALUES (3, 256);
INSERT INTO `roles_permissionss` VALUES (3, 257);
INSERT INTO `roles_permissionss` VALUES (3, 260);
INSERT INTO `roles_permissionss` VALUES (3, 261);
INSERT INTO `roles_permissionss` VALUES (3, 262);
INSERT INTO `roles_permissionss` VALUES (3, 263);
INSERT INTO `roles_permissionss` VALUES (3, 265);
INSERT INTO `roles_permissionss` VALUES (3, 266);
INSERT INTO `roles_permissionss` VALUES (3, 267);
INSERT INTO `roles_permissionss` VALUES (3, 273);
INSERT INTO `roles_permissionss` VALUES (4, 2);
INSERT INTO `roles_permissionss` VALUES (4, 10);
INSERT INTO `roles_permissionss` VALUES (4, 18);
INSERT INTO `roles_permissionss` VALUES (4, 23);
INSERT INTO `roles_permissionss` VALUES (4, 37);
INSERT INTO `roles_permissionss` VALUES (4, 40);
INSERT INTO `roles_permissionss` VALUES (4, 41);
INSERT INTO `roles_permissionss` VALUES (4, 42);
INSERT INTO `roles_permissionss` VALUES (4, 44);
INSERT INTO `roles_permissionss` VALUES (4, 47);
INSERT INTO `roles_permissionss` VALUES (4, 48);
INSERT INTO `roles_permissionss` VALUES (4, 49);
INSERT INTO `roles_permissionss` VALUES (4, 50);
INSERT INTO `roles_permissionss` VALUES (4, 51);
INSERT INTO `roles_permissionss` VALUES (4, 52);
INSERT INTO `roles_permissionss` VALUES (4, 53);
INSERT INTO `roles_permissionss` VALUES (4, 54);
INSERT INTO `roles_permissionss` VALUES (4, 55);
INSERT INTO `roles_permissionss` VALUES (4, 56);
INSERT INTO `roles_permissionss` VALUES (4, 57);
INSERT INTO `roles_permissionss` VALUES (4, 58);
INSERT INTO `roles_permissionss` VALUES (4, 59);
INSERT INTO `roles_permissionss` VALUES (4, 62);
INSERT INTO `roles_permissionss` VALUES (4, 63);
INSERT INTO `roles_permissionss` VALUES (4, 64);
INSERT INTO `roles_permissionss` VALUES (4, 65);
INSERT INTO `roles_permissionss` VALUES (4, 66);
INSERT INTO `roles_permissionss` VALUES (4, 67);
INSERT INTO `roles_permissionss` VALUES (4, 68);
INSERT INTO `roles_permissionss` VALUES (4, 69);
INSERT INTO `roles_permissionss` VALUES (4, 70);
INSERT INTO `roles_permissionss` VALUES (4, 71);
INSERT INTO `roles_permissionss` VALUES (4, 72);
INSERT INTO `roles_permissionss` VALUES (4, 73);
INSERT INTO `roles_permissionss` VALUES (4, 74);
INSERT INTO `roles_permissionss` VALUES (4, 75);
INSERT INTO `roles_permissionss` VALUES (4, 76);
INSERT INTO `roles_permissionss` VALUES (4, 77);
INSERT INTO `roles_permissionss` VALUES (4, 78);
INSERT INTO `roles_permissionss` VALUES (4, 79);
INSERT INTO `roles_permissionss` VALUES (4, 80);
INSERT INTO `roles_permissionss` VALUES (4, 101);
INSERT INTO `roles_permissionss` VALUES (4, 102);
INSERT INTO `roles_permissionss` VALUES (4, 103);
INSERT INTO `roles_permissionss` VALUES (4, 104);
INSERT INTO `roles_permissionss` VALUES (4, 105);
INSERT INTO `roles_permissionss` VALUES (4, 106);
INSERT INTO `roles_permissionss` VALUES (4, 107);
INSERT INTO `roles_permissionss` VALUES (4, 108);
INSERT INTO `roles_permissionss` VALUES (4, 109);
INSERT INTO `roles_permissionss` VALUES (4, 110);
INSERT INTO `roles_permissionss` VALUES (4, 111);
INSERT INTO `roles_permissionss` VALUES (4, 112);
INSERT INTO `roles_permissionss` VALUES (4, 113);
INSERT INTO `roles_permissionss` VALUES (4, 114);
INSERT INTO `roles_permissionss` VALUES (4, 115);
INSERT INTO `roles_permissionss` VALUES (4, 116);
INSERT INTO `roles_permissionss` VALUES (4, 117);
INSERT INTO `roles_permissionss` VALUES (4, 118);
INSERT INTO `roles_permissionss` VALUES (4, 119);
INSERT INTO `roles_permissionss` VALUES (4, 120);
INSERT INTO `roles_permissionss` VALUES (4, 121);
INSERT INTO `roles_permissionss` VALUES (4, 123);
INSERT INTO `roles_permissionss` VALUES (4, 124);
INSERT INTO `roles_permissionss` VALUES (4, 127);
INSERT INTO `roles_permissionss` VALUES (4, 128);
INSERT INTO `roles_permissionss` VALUES (4, 129);
INSERT INTO `roles_permissionss` VALUES (4, 130);
INSERT INTO `roles_permissionss` VALUES (4, 131);
INSERT INTO `roles_permissionss` VALUES (4, 132);
INSERT INTO `roles_permissionss` VALUES (4, 135);
INSERT INTO `roles_permissionss` VALUES (4, 136);
INSERT INTO `roles_permissionss` VALUES (4, 137);
INSERT INTO `roles_permissionss` VALUES (4, 138);
INSERT INTO `roles_permissionss` VALUES (4, 152);
INSERT INTO `roles_permissionss` VALUES (4, 153);
INSERT INTO `roles_permissionss` VALUES (4, 154);
INSERT INTO `roles_permissionss` VALUES (4, 155);
INSERT INTO `roles_permissionss` VALUES (4, 156);
INSERT INTO `roles_permissionss` VALUES (4, 157);
INSERT INTO `roles_permissionss` VALUES (4, 158);
INSERT INTO `roles_permissionss` VALUES (4, 159);
INSERT INTO `roles_permissionss` VALUES (4, 167);
INSERT INTO `roles_permissionss` VALUES (4, 168);
INSERT INTO `roles_permissionss` VALUES (4, 169);
INSERT INTO `roles_permissionss` VALUES (4, 170);
INSERT INTO `roles_permissionss` VALUES (4, 171);
INSERT INTO `roles_permissionss` VALUES (4, 173);
INSERT INTO `roles_permissionss` VALUES (4, 174);
INSERT INTO `roles_permissionss` VALUES (4, 175);
INSERT INTO `roles_permissionss` VALUES (4, 176);
INSERT INTO `roles_permissionss` VALUES (4, 179);
INSERT INTO `roles_permissionss` VALUES (4, 180);
INSERT INTO `roles_permissionss` VALUES (4, 181);
INSERT INTO `roles_permissionss` VALUES (4, 182);
INSERT INTO `roles_permissionss` VALUES (4, 183);
INSERT INTO `roles_permissionss` VALUES (4, 184);
INSERT INTO `roles_permissionss` VALUES (4, 185);
INSERT INTO `roles_permissionss` VALUES (4, 194);
INSERT INTO `roles_permissionss` VALUES (4, 196);
INSERT INTO `roles_permissionss` VALUES (4, 197);
INSERT INTO `roles_permissionss` VALUES (4, 198);
INSERT INTO `roles_permissionss` VALUES (4, 199);
INSERT INTO `roles_permissionss` VALUES (4, 200);
INSERT INTO `roles_permissionss` VALUES (4, 201);
INSERT INTO `roles_permissionss` VALUES (4, 202);
INSERT INTO `roles_permissionss` VALUES (4, 203);
INSERT INTO `roles_permissionss` VALUES (4, 204);
INSERT INTO `roles_permissionss` VALUES (4, 205);
INSERT INTO `roles_permissionss` VALUES (4, 206);
INSERT INTO `roles_permissionss` VALUES (4, 207);
INSERT INTO `roles_permissionss` VALUES (4, 209);
INSERT INTO `roles_permissionss` VALUES (4, 212);
INSERT INTO `roles_permissionss` VALUES (4, 213);
INSERT INTO `roles_permissionss` VALUES (4, 214);
INSERT INTO `roles_permissionss` VALUES (4, 215);
INSERT INTO `roles_permissionss` VALUES (4, 216);
INSERT INTO `roles_permissionss` VALUES (4, 217);
INSERT INTO `roles_permissionss` VALUES (4, 218);
INSERT INTO `roles_permissionss` VALUES (4, 219);
INSERT INTO `roles_permissionss` VALUES (4, 221);
INSERT INTO `roles_permissionss` VALUES (4, 225);
INSERT INTO `roles_permissionss` VALUES (4, 226);
INSERT INTO `roles_permissionss` VALUES (4, 235);
INSERT INTO `roles_permissionss` VALUES (4, 241);
INSERT INTO `roles_permissionss` VALUES (4, 244);
INSERT INTO `roles_permissionss` VALUES (4, 246);
INSERT INTO `roles_permissionss` VALUES (4, 253);
INSERT INTO `roles_permissionss` VALUES (4, 254);
INSERT INTO `roles_permissionss` VALUES (4, 255);
INSERT INTO `roles_permissionss` VALUES (4, 256);
INSERT INTO `roles_permissionss` VALUES (4, 257);
INSERT INTO `roles_permissionss` VALUES (4, 258);
INSERT INTO `roles_permissionss` VALUES (4, 259);
INSERT INTO `roles_permissionss` VALUES (4, 260);
INSERT INTO `roles_permissionss` VALUES (4, 261);
INSERT INTO `roles_permissionss` VALUES (4, 262);
INSERT INTO `roles_permissionss` VALUES (4, 263);
INSERT INTO `roles_permissionss` VALUES (4, 265);
INSERT INTO `roles_permissionss` VALUES (4, 266);
INSERT INTO `roles_permissionss` VALUES (4, 267);
INSERT INTO `roles_permissionss` VALUES (4, 270);
INSERT INTO `roles_permissionss` VALUES (4, 271);
INSERT INTO `roles_permissionss` VALUES (4, 273);
INSERT INTO `roles_permissionss` VALUES (4, 274);
INSERT INTO `roles_permissionss` VALUES (4, 275);
INSERT INTO `roles_permissionss` VALUES (4, 276);
INSERT INTO `roles_permissionss` VALUES (4, 277);
INSERT INTO `roles_permissionss` VALUES (4, 278);
INSERT INTO `roles_permissionss` VALUES (4, 279);
INSERT INTO `roles_permissionss` VALUES (4, 280);
INSERT INTO `roles_permissionss` VALUES (4, 281);
INSERT INTO `roles_permissionss` VALUES (4, 282);
INSERT INTO `roles_permissionss` VALUES (4, 283);
INSERT INTO `roles_permissionss` VALUES (4, 284);
INSERT INTO `roles_permissionss` VALUES (4, 286);
INSERT INTO `roles_permissionss` VALUES (4, 287);
INSERT INTO `roles_permissionss` VALUES (4, 288);
INSERT INTO `roles_permissionss` VALUES (4, 290);
INSERT INTO `roles_permissionss` VALUES (4, 291);
INSERT INTO `roles_permissionss` VALUES (4, 292);
INSERT INTO `roles_permissionss` VALUES (4, 293);
INSERT INTO `roles_permissionss` VALUES (4, 294);
INSERT INTO `roles_permissionss` VALUES (4, 295);
INSERT INTO `roles_permissionss` VALUES (4, 296);
INSERT INTO `roles_permissionss` VALUES (4, 297);
INSERT INTO `roles_permissionss` VALUES (4, 298);
INSERT INTO `roles_permissionss` VALUES (4, 299);
INSERT INTO `roles_permissionss` VALUES (4, 300);
INSERT INTO `roles_permissionss` VALUES (4, 301);
INSERT INTO `roles_permissionss` VALUES (4, 302);
INSERT INTO `roles_permissionss` VALUES (4, 303);
INSERT INTO `roles_permissionss` VALUES (4, 304);
INSERT INTO `roles_permissionss` VALUES (4, 305);
INSERT INTO `roles_permissionss` VALUES (4, 306);
INSERT INTO `roles_permissionss` VALUES (4, 307);
INSERT INTO `roles_permissionss` VALUES (4, 308);
INSERT INTO `roles_permissionss` VALUES (4, 309);
INSERT INTO `roles_permissionss` VALUES (4, 310);
INSERT INTO `roles_permissionss` VALUES (4, 311);
INSERT INTO `roles_permissionss` VALUES (4, 312);
INSERT INTO `roles_permissionss` VALUES (4, 313);
INSERT INTO `roles_permissionss` VALUES (4, 314);
INSERT INTO `roles_permissionss` VALUES (4, 315);
INSERT INTO `roles_permissionss` VALUES (4, 316);
INSERT INTO `roles_permissionss` VALUES (4, 317);
INSERT INTO `roles_permissionss` VALUES (4, 318);
INSERT INTO `roles_permissionss` VALUES (4, 319);
INSERT INTO `roles_permissionss` VALUES (4, 320);
INSERT INTO `roles_permissionss` VALUES (4, 321);
INSERT INTO `roles_permissionss` VALUES (4, 322);
INSERT INTO `roles_permissionss` VALUES (4, 323);
INSERT INTO `roles_permissionss` VALUES (4, 324);
INSERT INTO `roles_permissionss` VALUES (4, 325);
INSERT INTO `roles_permissionss` VALUES (4, 326);
INSERT INTO `roles_permissionss` VALUES (4, 327);
INSERT INTO `roles_permissionss` VALUES (4, 328);
INSERT INTO `roles_permissionss` VALUES (5, 2);
INSERT INTO `roles_permissionss` VALUES (5, 18);
INSERT INTO `roles_permissionss` VALUES (5, 23);
INSERT INTO `roles_permissionss` VALUES (5, 48);
INSERT INTO `roles_permissionss` VALUES (5, 49);
INSERT INTO `roles_permissionss` VALUES (5, 50);
INSERT INTO `roles_permissionss` VALUES (5, 51);
INSERT INTO `roles_permissionss` VALUES (5, 52);
INSERT INTO `roles_permissionss` VALUES (5, 53);
INSERT INTO `roles_permissionss` VALUES (5, 54);
INSERT INTO `roles_permissionss` VALUES (5, 55);
INSERT INTO `roles_permissionss` VALUES (5, 56);
INSERT INTO `roles_permissionss` VALUES (5, 57);
INSERT INTO `roles_permissionss` VALUES (5, 58);
INSERT INTO `roles_permissionss` VALUES (5, 59);
INSERT INTO `roles_permissionss` VALUES (5, 62);
INSERT INTO `roles_permissionss` VALUES (5, 63);
INSERT INTO `roles_permissionss` VALUES (5, 66);
INSERT INTO `roles_permissionss` VALUES (5, 67);
INSERT INTO `roles_permissionss` VALUES (5, 68);
INSERT INTO `roles_permissionss` VALUES (5, 69);
INSERT INTO `roles_permissionss` VALUES (5, 70);
INSERT INTO `roles_permissionss` VALUES (5, 71);
INSERT INTO `roles_permissionss` VALUES (5, 72);
INSERT INTO `roles_permissionss` VALUES (5, 73);
INSERT INTO `roles_permissionss` VALUES (5, 74);
INSERT INTO `roles_permissionss` VALUES (5, 75);
INSERT INTO `roles_permissionss` VALUES (5, 76);
INSERT INTO `roles_permissionss` VALUES (5, 77);
INSERT INTO `roles_permissionss` VALUES (5, 78);
INSERT INTO `roles_permissionss` VALUES (5, 79);
INSERT INTO `roles_permissionss` VALUES (5, 80);
INSERT INTO `roles_permissionss` VALUES (5, 102);
INSERT INTO `roles_permissionss` VALUES (5, 104);
INSERT INTO `roles_permissionss` VALUES (5, 105);
INSERT INTO `roles_permissionss` VALUES (5, 110);
INSERT INTO `roles_permissionss` VALUES (5, 113);
INSERT INTO `roles_permissionss` VALUES (5, 114);
INSERT INTO `roles_permissionss` VALUES (5, 115);
INSERT INTO `roles_permissionss` VALUES (5, 116);
INSERT INTO `roles_permissionss` VALUES (5, 117);
INSERT INTO `roles_permissionss` VALUES (5, 121);
INSERT INTO `roles_permissionss` VALUES (5, 123);
INSERT INTO `roles_permissionss` VALUES (5, 138);
INSERT INTO `roles_permissionss` VALUES (5, 152);
INSERT INTO `roles_permissionss` VALUES (5, 153);
INSERT INTO `roles_permissionss` VALUES (5, 154);
INSERT INTO `roles_permissionss` VALUES (5, 155);
INSERT INTO `roles_permissionss` VALUES (5, 156);
INSERT INTO `roles_permissionss` VALUES (5, 157);
INSERT INTO `roles_permissionss` VALUES (5, 158);
INSERT INTO `roles_permissionss` VALUES (5, 159);
INSERT INTO `roles_permissionss` VALUES (5, 179);
INSERT INTO `roles_permissionss` VALUES (5, 180);
INSERT INTO `roles_permissionss` VALUES (5, 181);
INSERT INTO `roles_permissionss` VALUES (5, 183);
INSERT INTO `roles_permissionss` VALUES (5, 184);
INSERT INTO `roles_permissionss` VALUES (5, 185);
INSERT INTO `roles_permissionss` VALUES (5, 206);
INSERT INTO `roles_permissionss` VALUES (5, 207);
INSERT INTO `roles_permissionss` VALUES (5, 209);
INSERT INTO `roles_permissionss` VALUES (5, 241);
INSERT INTO `roles_permissionss` VALUES (5, 253);
INSERT INTO `roles_permissionss` VALUES (5, 254);
INSERT INTO `roles_permissionss` VALUES (5, 262);
INSERT INTO `roles_permissionss` VALUES (5, 263);
INSERT INTO `roles_permissionss` VALUES (5, 265);
INSERT INTO `roles_permissionss` VALUES (5, 266);
INSERT INTO `roles_permissionss` VALUES (5, 267);
INSERT INTO `roles_permissionss` VALUES (5, 273);

-- ----------------------------
-- Table structure for storageclass
-- ----------------------------
DROP TABLE IF EXISTS `storageclass`;
CREATE TABLE `storageclass`  (
  `created_at` datetime(0) DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provisioner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reclaim_policy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  `volume_binding_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for templates
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates`  (
  `created_at` datetime(0) DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rules` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO `templates` VALUES (NULL, 'apiVersion: v1\nkind: Service\nmetadata:\n  name: {{.name}}\n  namespace: {{.namespace}}\n  annotations:\n    sidecar.istio.io/inject: \"false\"\n  labels:\n    app: {{.name}}\nspec:\n  ports: {{range $k,$v := .ports}}\n    - port: {{$v.port}}\n      name: {{$v.name}}\n      protocol: {{$v.protocol}}{{end}}\n  {{if eq .resourceType \"service\"}}selector:\n    app: {{.name}}{{end}}\n---', 1, 'Service', 'service', '', '2019-07-24 14:12:34');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: apps/v1\r\nkind: Deployment\r\nmetadata:\r\n  name: {{.name}}\r\n  namespace: {{.namespace}}\r\n  labels:\r\n    app: {{.name}}\r\n    language: {{.language}}\r\nspec:\r\n  minReadySeconds: 10\r\n  replicas: {{.replicas}}\r\n  selector:\r\n    matchLabels:\r\n      app: {{.name}}\r\n  strategy:\r\n    rollingUpdate:\r\n      maxSurge: 1\r\n      maxUnavailable: 1\r\n    type: RollingUpdate\r\n  template:\r\n    metadata:\r\n      labels:\r\n        app: {{.name}}\r\n        language: {{.language}}\r\n    spec:\r\n      imagePullSecrets:\r\n      - name: regcred\r\n      containers:\r\n      - image: 192.168.145.132/{{.namespace}}/{{.name}}:V11.0\r\n        imagePullPolicy: IfNotPresent\r\n        name: {{.name}}\r\n        ports: {{range $k, $v := .ports}}\r\n        - containerPort: {{$v.port}}{{end}}\r\n        resources:\r\n          requests:\r\n            memory: {{.memory}}\r\n          limits:\r\n            memory: {{.maxMemory}}\r\n        env:\r\n        - name: ENV\r\n          value: prod\r\n        - name: POD_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.name\r\n        - name: POD_NAMESPACE\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: metadata.namespace\r\n        - name: INSTANCE_IP\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: status.podIP\r\n        - name: NODE_NAME\r\n          valueFrom:\r\n            fieldRef:\r\n              apiVersion: v1\r\n              fieldPath: spec.nodeName\r\n        volumeMounts:\r\n        - name: tz-config\r\n          mountPath: /etc/localtime\r\n      volumes:\r\n      - name: \"tz-config\"\r\n        hostPath:\r\n          path: \"/usr/share/zoneinfo/Asia/Shanghai\"', 2, 'Deployment', 'deployment', '', '2020-01-16 18:42:23');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: v1\nkind: Endpoints\nmetadata:\n  name: {{.name}}\n  namespace: {{.namespace}}\nsubsets:{{range $k,$v := .addresses}}\n  - addresses:{{range $key,$val := $v.ips}}\n    - ip: {{$val}}{{end}}\n    ports:{{range $key,$val := $v.ports}}\n      - port: {{$val.port}}\n        protocol: TCP\n        name: {{$val.name}}{{end}}{{end}}', 4, 'Endpoints', 'endpoints', '', '2018-09-21 16:49:16');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: v1\nkind: ConfigMap\nmetadata:\n  name: {{.name}}\n  namespace: {{.namespace}}\ndata: {{range  $k,$v := .data}} \n  -{{$v.key}} : {{$v.value}}{{end}}', 5, 'ConfigMap', 'configmap', '', '2018-11-13 17:06:01');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: extensions/v1beta1\r\nkind: Ingress\r\nmetadata:\r\n  name: {{.name}}\r\n  namespace: kube-system\r\n  annotations:\r\n    kubernetes.io/ingress.class: \"nginx\"\r\nspec:\r\n  rules:\r\n  - host: jm.test.com\r\n    http:\r\n      paths:\r\n        - path: /\r\n          backend:\r\n            serviceName: {{.name}}\r\n            servicePort: 8081\r\napiVersion: extensions/v1beta1\r\nkind: Ingress\r\nmetadata:\r\n  name: {{.name}}\r\n  namespace: {{.namespace}}\r\n  annotations:\r\n    kubernetes.io/ingress.class: \"nginx\"\r\nspec:\r\n  rules:\r\n  - host: jm.test.com\r\n    http:\r\n      paths:\r\n        - path: /\r\n          backend:\r\n            serviceName: {{.name}}\r\n            servicePort: 8081\r\n--- \r\n', 6, 'Ingress', 'ingress', '', '2019-06-03 15:20:24');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: batch/v1beta1  \nkind: CronJob  \nmetadata:  \n  name: {{.name}}\n  namespace: {{.namespace}}\nspec:  \n  schedule: \"{{.schedule}}\"  \n  concurrencyPolicy: \"Replace\" # 并发性策略\n  jobTemplate:  \n    spec:  \n      template:  \n        spec:\n          restartPolicy: Never\n          imagePullSecrets:\n          - name: regcred\n          containers:  \n          - name: {{.name}}  \n            image: {{.docker_repo}}/{{.image}}\n            args:  {{range $k, $v := .args}}\n            - {{$v}} {{end}}\n            env: \n            - name: ENV\n              value: test  {{range $k, $v := .envs}}\n            - name: {{$v.EnvKey}}\n              value: {{$v.EnvVar}} {{end}}{{if .logPath}}\n            volumeMounts:\n            - name: app-logs\n              mountPath: {{.logPath}}{{end}}{{if .logPath}}\n          - image: {{.docker_repo}}/filebeat:6.2.4\n            name: filebeat\n            args: [\n              \"-c\", \"/etc/filebeat/filebeat.yml\",\n              \"-e\",\n            ]\n            volumeMounts:\n            - name: {{.name}}\n              mountPath: /etc/filebeat/filebeat.yml\n              readOnly: true\n              subPath: filebeat.yml\n            - name: app-logs\n              mountPath: {{.logPath}}{{end}}\n          volumes: {{if .logPath}}\n          - name: app-logs\n            emptyDir: {} {{end}}{{if .isConfigMap}}\n          - name: {{.name}}\n            configMap:\n              name: {{.name}}{{end}}\n---', 7, 'CronJob', 'cronjob', '', '2019-05-23 15:20:00');
INSERT INTO `templates` VALUES (NULL, 'APPNAME={{.app_name}}\r\nBUILD_PATH={{.build_path}}\r\nNAMESPACE={{.namespace}}\r\nHUB_ADDR={{.docker_repo}}\r\n\r\ncd ${APPNAME}\r\n\r\ndocker build -f Dockerfile --rm -t ${APPNAME}:${TAGNAME} .\r\ndocker tag ${APPNAME}:${TAGNAME} $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\ndocker push $HUB_ADDR/$NAMESPACE/$APPNAME:${TAGNAME}\r\n', 9, 'JenkinsCommand', 'JenkinsCommand', '', '2019-08-05 15:42:56');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: networking.istio.io/v1alpha3\nkind: ServiceEntry\nmetadata:\n  name: {{.name}}\n  namespace: {{.namespace}}\nspec:\n  hosts: {{range $k,$v := .hosts}}\n  - {{$v}}{{end}}\n  {{if .address}}addresses: {{range $k,$v := .address}}\n  - {{$v}}{{end}}{{end}}\n  ports: {{range $k,$v := .ports}}\n  - number: {{$v.number}}\n    name: {{$v.name}}\n    protocol: {{$v.protocol}}{{end}}\n  {{if .resolution}}resolution: {{.resolution}}\n    endpoints: {{range $k, $v := .resolution.endpoints}}\n    - address: {{$v.address}}\n      ports:\n        http: {{$v.port}}\n      labels:\n        version: {{$v.version}}{{end}}{{end}}\n  {{if .resolution}}resolution: {{.resolution}}{{end}}\n---', 10, 'ServiceEntry', 'ServiceEntry', '', '2018-07-02 15:46:56');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: networking.istio.io/v1alpha3\nkind: Gateway\nmetadata:\n  name: {{.name}}-gateway\n  namespace: {{.namespace}}\nspec:\n  selector:\n    istio: ingressgateway\n  servers: {{range $k,$v := .services}}\n  - port:\n      number: {{$v.port.number}}\n      name: {{$v.port.name}}\n      protocol: {{$v.port.number}}\n    hosts: {{range $host := $v.hosts}}\n    - \"{{$host}}\"{{end}}{{end}}', 11, 'Gateway', 'Gateway', '', '2019-04-08 12:23:10');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: networking.istio.io/v1alpha3\nkind: VirtualService\nmetadata:\n  name: {{.name}} # hello\n  namespace: {{.namespace}} # default\nspec:\n  hosts: {{if .hosts}}{{range $v := .hosts}}\n  - \"{{$v}}\"{{end}}{{end}} # hello.app.nsini.com\n  gateways: {{if .gateways}}{{range $v := .gateways}}\n  - \"{{$v}}\"{{end}}{{end}} # app-gateway\n  http: {{if .http}}{{range $k, $v := .http}}{{range $http_key,$http_val := $v.route}}\n  - match: {{if $http_val.uri_type}}{{range $uri_k,$uri_v := $http_val.uri_value}}\n    - uri:\n        {{$http_val.uri_type}}: {{$uri_v}}{{end}}{{end}} # exact|prefix|regex\n    route:\n    - destination:\n        host: {{$http_val.host}}.svc.cluster.local{{if $http_val.subset}}\n        subset: {{$http_val.subset}}{{end}}\n        port:\n          number: {{$http_val.port}}\n      weight: {{$http_val.weight}}\n    timeout: 60s{{end}}\n    {{end}}{{end}}  # true', 12, 'VirtualService', 'VirtualService', '', '2019-05-07 15:01:33');
INSERT INTO `templates` VALUES (NULL, 'args:\n- proxy\n- sidecar\n- --domain\n- $(POD_NAMESPACE).svc.cluster.local\n- --configPath\n- /etc/istio/proxy\n- --binaryPath\n- /usr/local/bin/envoy\n- --serviceCluster\n- $(POD_NAME).$(POD_NAMESPACE)\n- --drainDuration\n- 45s\n- --parentShutdownDuration\n- 1m0s\n- --discoveryAddress\n- istio-pilot.istio-system:15010\n- --zipkinAddress\n- zipkin.istio-system:9411\n- --connectTimeout\n- 10s\n- --proxyAdminPort\n- \"15000\"\n- --concurrency\n- \"2\"\n- --controlPlaneAuthPolicy\n- NONE\n- --statusPort\n- \"15020\"{{if .initPorts}}\n- --applicationPorts\n- {{.initPorts}}{{end}}\n- --proxyLogLevel\n- \"error\"\nenv:\n- name: POD_NAME\n  valueFrom:\n    fieldRef:\n      fieldPath: metadata.name\n- name: POD_NAMESPACE\n  valueFrom:\n    fieldRef:\n      fieldPath: metadata.namespace\n- name: INSTANCE_IP\n  valueFrom:\n    fieldRef:\n      fieldPath: status.podIP\n- name: ISTIO_META_POD_NAME\n  valueFrom:\n    fieldRef:\n      fieldPath: metadata.name\n- name: ISTIO_META_CONFIG_NAMESPACE\n  valueFrom:\n    fieldRef:\n      fieldPath: metadata.namespace\n- name: ISTIO_META_INTERCEPTION_MODE\n  value: REDIRECT\n- name: ISTIO_METAJSON_LABELS\n  value: |\n    {\"app\":\"{{.name}}\",\"language\":\"{{.language}}\"}\nimage: istio/proxyv2:1.2.2\nimagePullPolicy: IfNotPresent\nname: istio-proxy\nports:\n- containerPort: 15090\n  name: http-envoy-prom\n  protocol: TCP\nreadinessProbe:\n  failureThreshold: 30\n  httpGet:\n    path: /healthz/ready\n    port: 15020\n  initialDelaySeconds: 1\n  periodSeconds: 2\nresources:\n  limits:\n    cpu: \"2\"\n    memory: 128Mi\n  requests:\n    cpu: 100m\n    memory: 128Mi\nsecurityContext:\n  readOnlyRootFilesystem: true\n  runAsUser: 1337\nvolumeMounts:\n- mountPath: /etc/istio/proxy\n  name: istio-envoy\n- mountPath: /etc/certs/\n  name: istio-certs\n  readOnly: true', 14, 'IstioProxy', 'ServiceMesh-istio-proxy', '', '2019-08-02 17:47:45');
INSERT INTO `templates` VALUES (NULL, 'InitContainers:\n- args:\n  - -p\n  - \"15001\"\n  - -u\n  - \"1337\"\n  - -m\n  - REDIRECT\n  - -i\n  - \'*\'\n  - -x\n  - \"\"\n  {{if .initPorts}}- -b\n  - {{.initPorts}}{{end}}\n  - -d\n  - \"15020\"\n  image: istio/proxy_init:1.2.2\n  imagePullPolicy: IfNotPresent\n  name: istio-init\n  resources:\n    limits:\n      cpu: 100m\n      memory: 50Mi\n    requests:\n      cpu: 10m\n      memory: 10Mi\n  securityContext:\n    capabilities:\n      add:\n      - NET_ADMIN', 15, 'InitContainers', 'InitContainers', '', '2019-08-02 17:44:48');
INSERT INTO `templates` VALUES (NULL, 'filebeat.prospectors:\n- input_type: log\n  paths: {{range $k, $v := .paths}}\n    - {{$v}}{{end}}\n  fields:\n    app_name: {{.name}}\n    namespace: {{.namespace}}\n  multiline:\n    pattern: {{.pattern}}\n    match: after\n    negate: true\noutput.elasticsearch:\n  hosts: [\"elasticsearch:9200\"]', 21, 'FilebeatConfigMap', 'FilebeatConfigMap', '', '2019-08-13 11:06:07');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: v1\nkind: StorageClass\nmetadata:\n  name: {{.name}}\nprovisioner: {{.provisioner}}\nreclaimPolicy: {{.reclaimPolicy}}\nallowVolumeExpansion: true\nvolumeBindingMode: {{.volumeBindingMode}}', 22, 'StorageClass', 'StorageClass', '', '2019-03-21 10:02:15');
INSERT INTO `templates` VALUES (NULL, 'apiVersion: v1\nkind: PersistentVolumeClaim\nmetadata:\n  name: {{.name}}\n  namespace: {{.namespace}}\n  # labels:\n  #   app: hello\n  finalizers:\n  - kubernetes.io/pvc-protection\nspec:\n  accessModes: {{range $k,$v := .accessModes}}\n  - {{$v}} {{end}}\n  resources:\n    requests:\n      storage: {{.storage}}\n  storageClassName: {{.storageClassName}}', 23, 'PersistentVolumeClaim', 'PersistentVolumeClaim', '', '2018-11-15 18:40:14');
INSERT INTO `templates` VALUES ('2019-07-01 15:44:12', 'name: \"filebeat\"\nimage: \"elastic/filebeat:6.2.4\"\nargs: \n  - \"-c\"\n  - \"/etc/filebeat/filebeat.yml\"\n  - \"-e\"\nresources: \n  limits: \n    cpu: \"50m\"\n    memory: \"64Mi\"\n  requests: \n    cpu: \"10m\"\n    memory: \"32Mi\"\nvolumeMounts: \n  - name: \"app-logs\"\n    mountPath: \"/var/log/\"\n  - name: {{.name}}\n    readOnly: true\n    mountPath: \"/etc/filebeat/filebeat.yml\"\n    subPath: \"filebeat.yml\"\nterminationMessagePath: \"/dev/termination-log\"\nterminationMessagePolicy: \"File\"\nimagePullPolicy: \"IfNotPresent\"', 24, 'FilebeatContainer', 'FilebeatContainer', '', '2019-08-15 15:41:41');
INSERT INTO `templates` VALUES ('2019-08-22 18:27:51', '<html>\n	<body style=\"margin: 0;padding: 0;\">\n	<table style=\"font-size: 14px; font-family: Microsoft YaHei UI; border-collapse: collapse; text-align: left; float: left; margin-top:20px; margin-left: 20px; width: 800px; overflow: hidden;\">\n	<tr style=\"background: #F5FAFA; color:#666; height: 30px; padding: 0 10px;\">\n	<th colspan=\"2\" style=\"background: #CCE8EB;border: 1px solid #cad9ea;color: #666; text-align: center;\">开普勒消息中心-告警</th>\n	</tr>\n	<tr>\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">标题</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Notice.Title}}</td>\n	</tr>\n	<tr>\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">项目</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Notice.Name}}</td>\n	</tr>\n	<tr>\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">命名空间</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Notice.Namespace}}</td>\n	</tr>\n	<tr>\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">来源</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">HostName:{{.FromOs}}</td>\n	</tr>\n	<tr>\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">内容</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">\n	{{range .Content.Alerts}}\n	<table style=\"font-size: 12px; font-family: Microsoft YaHei UI; border-collapse: collapse; text-align: left; float: left; width: 650px; overflow: hidden;margin-bottom: 20px;\">\n	<tr> 　　\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">告警信息</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;  word-wrap:break-word;word-break:break-all;\">{{.Labels.AlertName}}</td>\n	</tr>\n	<tr > 　　\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">状态</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;  word-wrap:break-word;word-break:break-all;\">{{.Status}}</td>\n	</tr>\n	<tr> 　　\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">详情链接</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;  word-wrap:break-word;word-break:break-all;\">{{.GeneratorURL}}</td>\n	</tr>\n	<tr> 　　\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">来源</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;  word-wrap:break-word;word-break:break-all;\">{{.Annotations.From}}</td>\n	</tr>\n	<tr> 　　\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">目标</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;  word-wrap:break-word;word-break:break-all;\">{{.Annotations.To}}</td>\n	</tr>\n	<tr> 　　\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">开始时间</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;  word-wrap:break-word;word-break:break-all;\">{{.StartsAt}}</td>\n	</tr>\n	<tr> 　　\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">结束时间</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;  word-wrap:break-word;word-break:break-all;\">{{.EndsAt}}</td>\n	</tr>\n	<tr> 　　\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">详情</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;  word-wrap:break-word;word-break:break-all;\">{{.Annotations.Description}}</td>\n	</tr>\n	</table>\n	{{end}}\n	</td>\n	</tr>\n	<tr>\n	<td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">时间</td>\n	<td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Notice.CreatedAt}}</td>\n	</tr>\n	</table>\n	</body>\n	</html>', 25, 'EmailAlarm', 'EmailAlarm', '', '2019-08-22 18:27:51');
INSERT INTO `templates` VALUES ('2019-08-22 18:28:21', '<html>\n<body style=\"margin: 0;padding: 0;\">\n    <table style=\"font-size: 14px; font-family: Microsoft YaHei UI; border-collapse: collapse; text-align: left; float: left; margin-top:20px; margin-left: 20px; width: 500px\">\n        <tr style=\"background: #F5FAFA; color:#666; height: 30px; padding: 0 10px;\">\n            <th colspan=\"2\" style=\"background: #CCE8EB;border: 1px solid #cad9ea;color: #666; text-align: center;\">开普勒消息中心-通知</th>\n        </tr>\n        <tr>\n            <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">项目</td>\n            <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Notice.Name}}</td>\n        </tr>\n        <tr>\n            <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">命名空间</td>\n            <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Notice.Namespace}}</td>\n        </tr>\n        <tr>\n            <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">事件</td>\n            <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Notice.Action}}({{.WebHooksReq.EventDesc}})</td>\n        </tr>\n        <tr>\n            <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">描述</td>\n            <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.WebHooksReq.Message}}</td>\n        </tr>\n        <tr>\n            <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">来源</td>\n            <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">HostName:{{.FromOs}}</td>\n        </tr>\n        <tr>\n            <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">操作人</td>\n            <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.WebHooksReq.Member.Username}}</td>\n        </tr>\n        <tr>\n            <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">时间</td>\n            <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Notice.CreatedAt}}</td>\n        </tr>\n    </table>\n</body>\n</html>', 26, 'EmailNotice', 'EmailNotice', '', '2019-08-22 18:28:21');
INSERT INTO `templates` VALUES ('2019-08-22 18:29:03', '<html>\n<body style=\"margin: 0;padding: 0;\">\n<table style=\"font-size: 14px; font-family: Microsoft YaHei UI; border-collapse: collapse; text-align: left; float: left; margin-top:20px; margin-left: 20px; width: 500px\">\n    <tr style=\"background: #F5FAFA; color:#666; height: 30px; padding: 0 10px;\">\n        <th colspan=\"2\" style=\"background: #CCE8EB;border: 1px solid #cad9ea;color: #666; text-align: center;\">开普勒消息中心-公告</th>\n    </tr>\n    <tr>\n        <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">标题</td>\n        <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Title}}</td>\n    </tr>\n    <tr>\n        <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">内容</td>\n        <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.Content}}</td>\n    </tr>\n    <tr>\n        <td style=\"width: 100px; border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">时间</td>\n        <td style=\"border: 1px solid #cad9ea;color: #666;padding: 0 10px;\">{{.CreatedAt}}</td>\n    </tr>\n</table>\n</body>\n</html>', 27, 'EmailProclaim', 'EmailProclaim', '', '2019-08-22 18:29:03');

-- ----------------------------
-- Table structure for webhooks
-- ----------------------------
DROP TABLE IF EXISTS `webhooks`;
CREATE TABLE `webhooks`  (
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `auther_id` int(11) DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wechat_users
-- ----------------------------
DROP TABLE IF EXISTS `wechat_users`;
CREATE TABLE `wechat_users`  (
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(0) DEFAULT NULL,
  `headimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `subscribe` int(11) DEFAULT NULL,
  `subscribe_time` datetime(0) DEFAULT NULL,
  `updated_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
