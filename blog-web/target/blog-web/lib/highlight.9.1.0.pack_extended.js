"use strict";!function(){var b,a;b=hljs.configure,hljs.configure=function(c){var d=c.highlightSizeThreshold;hljs.highlightSizeThreshold=d===+d?d:null,b.call(this,c)},a=hljs.highlightBlock,hljs.highlightBlock=function(d){var c=d.innerHTML,e=hljs.highlightSizeThreshold;(null==e||e>c.length)&&a.call(hljs,d)}}();