#!/bin/bash
# 7-1 scss architecture
# https://sass-guidelin.es/#the-7-1-pattern

# 1. base styles
mkdir base && cd base
touch _base.scss _animations.scss _typography.scss _utilities.scss
cd ..

# 2. style that not produce output
cd .. &  mkdir abstracts && cd abstracts
touch _mixins.scss _variables.scss _functions.scss _helpers.scss

# 3. layout components 
cd .. && mkdir components && cd components
touch _buttons.scss  # etc...

# 4. layout styles eg. global footer header etc etc
cd .. && mkdir layout && cd layout && 
touch _grid.scss _header.scss _footer.scss  _navigation.scss # etc...

# 5. Styles for Home page or extra specific pages
cd .. && mkdir pages && cd pages
touch _home.scss

# 6. Styles for specific template
cd .. && mkdir themes && cd themes
touch _theme.scss _admin.scss

# 7. Styles for third parties components
cd .. && mkdir vendors && cd vendors
touch _jquery-ui.scss  # bootstrap etc

cd .. && touch style.scss
cat >> style.scss <<EOF
// @import  'abstracts/mixins';
// @import  'abstracts/_variables';
// @import  'abstracts/helpers';
// @import  'base/animations';
// @import  'base/typography';
// @import  'base/utilities';
// @import  'base/base';
// @import  'components/buttons';
// @import  'layout/grid';
// @import  'layout/header';
// @import  'layout/footer';
// @import  'layout/navigation';
// @import  'pages/home';
// @import  'themes/theme';
// @import  'themes/admin';
// @import  'vendors/jquery-ui';



EOF
