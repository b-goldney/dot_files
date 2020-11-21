#export MONGO_PATH=/usr/local/mongodb
#export MONGO_PATH=$PATH:$MONGO_PATH/bin #added by Anaconda3 5.3.0 installer

export PYSPARK_DRIVER_PYTHON="jupyter" 
export PYSPARK_DRIVER_PYTHON_OPTS="notebook" 
alias snotebook='$SPARK_PATH/bin/pyspark --master local[4]'

# this is for "npm start" command in React
export HOST=localhost


export PATH=/usr/local/bin:$PATH
alias g++='/usr/local/bin/g++-9 -std=c++17'

# this updates the terminal prompt (i.e. the part before the "$")
export PS1="goldney$ "
PATH="/usr/local/bin:/usr/local/bin:/usr/gcc/bin:/opt/anaconda3/bin:/Users/brandongoldney/anaconda3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:export SPARK_HOME=/opt/spark:export PATH=/bin:/usr/local/bin:/opt/anaconda3/bin:/Users/brandongoldney/anaconda3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:export SPARK_HOME=/opt/spark:export PATH=/bin:/opt/anaconda3/bin:/opt/anaconda3/condabin:/Users/brandongoldney/anaconda3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:export SPARK_HOME=/opt/spark:export PATH=$SPARK_HOME/bin:$PATH:export AM582=/Users/brandongoldney/Documents/U_Washington/AMATH_582/AMATH_582:/Library/TeX/texbin:/opt/X11/bin:/Library/Apple/usr/bin:export AM582=/Users/brandongoldney/Documents/U_Washington/AMATH_582/AMATH_582:/Library/TeX/texbin:/opt/X11/bin:/Library/Apple/usr/bin:export AM582=/Users/brandongoldney/Documents/U_Washington/AMATH_582/AMATH_582:/Library/TeX/texbin:/opt/X11/bin:/Library/Apple/usr/bin"
