wget https://archive.apache.org/dist/nifi/1.9.0/nifi-1.9.0-bin.tar.gz -P /opt
wget https://archive.apache.org/dist/nifi/nifi-registry/nifi-registry-0.3.0/nifi-registry-0.3.0-bin.tar.gz -P /opt
tar -C /opt -xvzf /opt/nifi-1.9.0-bin.tar.gz
tar -C /opt -xvzf /opt/nifi-registry-0.3.0-bin.tar.gz
rm -f /opt/nifi-1.9.0-bin.tar.gz
rm -f /opt/nifi-registry-0.3.0-bin.tar.gz
cp flow.xml.gz /opt/nifi-1.9.0/conf
cp archive/* /opt/nifi-1.9.0/archive
cp nifi-registry.mv.db /opt/nifi-registry-0.3.0/database/nifi-registry.mv.db
apt-get install openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export JRE_HOME=/user/lib/jvm/java-8-openjdk-amd64/jre/
/opt/nifi-1.9.0/bin/nifi.sh start
/opt/nifi-registry-0.3.0/bin/nifi-registry.sh start