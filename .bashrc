export CVSROOT=:pserver:cgardner@cvs.drupal.org:/cvs/drupal-contrib

if [ -z "$SCREEN_EXISTS" ]; then
  export SCREEN_EXISTS=1
  screen
fi

htdocs()
{
  cd ~/sites
}

d5modules() 
{
  htdocs; 
  if [ ! -d drupal-5 ]; then
    mkdir drupal-5
  fi
  cd drupal-5/sites/all/modules/contrib;
}

d5mod()
{
  MODULE="${1}";
  SITE="${2}";
  BRANCH=DRUPAL-5
  if [ -z "$SITE" ]; then
    SITE="all"
  fi
  if [ ! -z "$SITE" ]; then
    htdocs
    SITEPATH="drupal-5/sites/${SITE}/modules/contrib"
    if [ ! -d $SITEPATH ]; then
      mkdir -p $SITEPATH
    fi
    cd $SITEPATH
  else
    echo "An error has occured"
    exit 0
  fi  
  cvs -z6 -d:pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal-contrib co -d ./$MODULE -r $BRANCH contributions/modules/$MODULE; \
  cd $MODULE #New addition
}

d6modules() 
{
  htdocs;
  cd drupal-6/sites/all/modules/contrib
}

d6themes()
{
  htdocs
  THEMES="drupal-6/sites/all/themes/contrib"
  if [ ! -d $THEMES ]; then
    mkdir -p $THEMES
  fi
  cd $THEMES
}

d6theme()
{
  THEME="${1}";
  SITE="${2}";
  if [ -z "$SITE" ]; then
    d6themes
  fi
  if [ ! -z "$SITE" ]; then
    htdocs
    SITEPATH="drupal-6/sites/${SITE}/themes/contrib"
    if [ ! -d $SITEPATH ]; then
      mkdir -p $SITEPATH
    fi
    cd $SITEPATH
  fi  
  cvs -z6 -d:pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal-contrib co -d ./$THEME contributions/themes/$THEME; \
  cd $THEME #New addition
}


d6mod()
{
  MODULE="${1}";
  SITE="${2}";
  if [ -z "$SITE" ]; then
    d6modules
  fi
  if [ ! -z "$SITE" ]; then
    htdocs
    SITEPATH="drupal-6/sites/${SITE}/modules/contrib"
    if [ ! -d $SITEPATH ]; then
      mkdir -p $SITEPATH
    fi
    cd $SITEPATH
  fi  
  cvs -z6 -d:pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal-contrib co -d ./$MODULE contributions/modules/$MODULE; \
  cd $MODULE #New addition
}

d7theme()
{
  THEME="${1}";
  SITE="${2}";
  if [ -z "$SITE" ]; then
    SITEPATH="/Users/cgardner/Sites/drupal-7/sites/all/themes/contrib"
  fi
  if [ ! -z "$SITE" ]; then
    SITEPATH="/Users/cgardner/Sites/drupal-7/sites/${SITE}/themes/contrib"
  fi 
  if [ ! -d $SITEPATH ]; then
    mkdir -p $SITEPATH
  fi
  cd $SITEPATH 
  cvs -z6 -d:pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal-contrib co -d ./$THEME contributions/themes/$THEME; \
  cd $THEME #New addition
}


d7mod()
{
  MODULE="${1}";
  SITE="${2}";
  CVS=`which cvs`
  if [ ! -z "$CVS" ]; then
    if [ -z "$SITE" ]; then
      SITEPATH="/Users/cgardner/Sites/drupal-7/sites/all/modules/contrib"
    fi
    if [ ! -z "$SITE" ]; then
      SITEPATH="/Users/cgardner/Sites/drupal-7/sites/${SITE}/modules/contrib"
    fi
    if [ ! -d $SITEPATH ]; then
      mkdir -p $SITEPATH
    fi
    cd $SITEPATH
    $CVS -z6 -d:pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal-contrib co -d ./$MODULE contributions/modules/$MODULE
    cd $MODULE #New addition
  else
    echo "CVS is not installed on the system path."
    exit
  fi
}

drevs() {
  cvs log "${1}" | egrep 'DRUPAL-.*:' | sort
}

dup() {
  cvs up -dP -r ${1}
}

# Count Files in a given Directory
cf() {
  DIRECTORY="${1}"
  if [ -z "$DIRECTORY"]; then
    DIRECTORY="."
  fi
  ls -l $DIRECTORY | grep -v ^l | wc -l
}

# DELete OLD files in a specified directory
delold() {
  DELPATH="${1}"
  DAYS="${2}"
  if [ -z "$DAYS" ]; then
    DAYS="30"
  fi
  
  if [ -z "$DELPATH" ]; then
    DELPATH="/tmp"
  fi
  find $DELPATH* -mtime +$DAYS -exec rm {} \;
}
