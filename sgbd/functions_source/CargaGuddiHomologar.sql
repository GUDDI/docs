


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>docs/sgbd/functions_source/CargaGuddiHomologar.sql at master · GUDDI/docs</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="fe2.rs.github.com">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="xhr-socket" href="/_sockets" />
    
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="807524" name="octolytics-actor-id" /><meta content="thiagosoares" name="octolytics-actor-login" /><meta content="9222e6d69af861478962b4bc4d53cebc1dcf989d1acfe46376c5119f6a87966a" name="octolytics-actor-hash" />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="KZiex8hUgvKxMJko9rLeeu86mBchGPC6b2JUO4iQ5m0=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-a51b7140dfba9f0ae1fe0eaf345dd6a4381f4ef8.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-ec4f51bae74d4ad5725891dccaecd4cc727d8cdc.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-e8054ad804a1cf9e9849130fee5a4a5487b663ed.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-90f8e0e909066dd1bee7ca4e33b769e7a28f0e3f.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="2faa5dbb764a951963be37a67771af2b">

        <link data-pjax-transient rel='permalink' href='/GUDDI/docs/blob/d891bf533e46b01152f88a86cb2cf5b3afe7d7c0/sgbd/functions_source/CargaGuddiHomologar.sql'>
  <meta property="og:title" content="docs"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/GUDDI/docs"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="docs - Documents "/>

  <meta name="description" content="docs - Documents " />

  <meta content="4664224" name="octolytics-dimension-user_id" /><meta content="GUDDI" name="octolytics-dimension-user_login" /><meta content="11142527" name="octolytics-dimension-repository_id" /><meta content="GUDDI/docs" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="11142527" name="octolytics-dimension-repository_network_root_id" /><meta content="GUDDI/docs" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/GUDDI/docs/commits/master.atom" rel="alternate" title="Recent Commits to docs:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob linux vis-public env-production ">

    <div class="wrapper">
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    <div class="divider-vertical"></div>

    
  <a href="/notifications" class="notification-indicator tooltipped downwards" title="You have unread notifications">
    <span class="mail-status unread"></span>
  </a>
  <div class="divider-vertical"></div>


      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey=" s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="thiagosoares"
      data-repo="GUDDI/docs"
      data-branch="master"
      data-sha="9c085aaade32b263cb204661307d10b165abd005"
  >

    <input type="hidden" name="nwo" value="GUDDI/docs" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
            <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    

  

    <ul id="user-links">
      <li>
        <a href="/thiagosoares" class="name">
          <img height="20" src="https://secure.gravatar.com/avatar/dee3cd0f690db1e719ba1c35bbed605e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /> thiagosoares
        </a>
      </li>

        <li>
          <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo" aria-label="Create a new repo">
            <span class="octicon octicon-repo-create"></span>
          </a>
        </li>

        <li>
          <a href="/settings/profile" id="account_settings"
            class="tooltipped downwards"
            aria-label="Account settings "
            title="Account settings ">
            <span class="octicon octicon-tools"></span>
          </a>
        </li>
        <li>
          <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
            <span class="octicon octicon-log-out"></span>
          </a>
        </li>

    </ul>


<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>

    <li class="section-title">
      <span title="GUDDI">This organization</span>
    </li>
    <li>
      <a href="/organizations/GUDDI/teams/new"><span class="octicon octicon-jersey"></span> New team</a>
    </li>
    <li>
      <a href="/organizations/GUDDI/repositories/new"><span class="octicon octicon-repo-create"></span> New repository</a>
    </li>


    <li class="section-title">
      <span title="GUDDI/docs">This repository</span>
    </li>
    <li>
      <a href="/GUDDI/docs/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
    </li>
      <li>
        <a href="/GUDDI/docs/settings/collaboration"><span class="octicon octicon-person-add"></span> New collaborator</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="KZiex8hUgvKxMJko9rLeeu86mBchGPC6b2JUO4iQ5m0=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="11142527" />

    <div class="select-menu js-menu-container js-select-menu">
        <a class="social-count js-social-count" href="/GUDDI/docs/watchers">
          5
        </a>
      <span class="minibutton select-menu-button with-count js-menu-target">
        <span class="js-select-button">
          <span class="octicon octicon-eye-unwatch"></span>
          Unwatch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container">

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for discussions in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  
<div class="js-toggler-container js-social-container starring-container ">
  <a href="/GUDDI/docs/unstar" class="minibutton with-count js-toggler-target star-button starred upwards" title="Unstar this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
  </a>
  <a href="/GUDDI/docs/star" class="minibutton with-count js-toggler-target star-button unstarred upwards " title="Star this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star"></span><span class="text">Star</span>
  </a>
  <a class="social-count js-social-count" href="/GUDDI/docs/stargazers">0</a>
</div>

  </li>


        <li>
          <a href="/GUDDI/docs/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="facebox nofollow">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/GUDDI/docs/network" class="social-count">0</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/GUDDI" class="url fn" itemprop="url" rel="author"><span itemprop="title">GUDDI</span></a></span
          ><span class="repohead-name-divider">/</span><strong
          ><a href="/GUDDI/docs" class="js-current-repository js-repo-home-link">docs</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="repo-nav repo-nav-full js-repository-container-pjax js-octicon-loaders">
  <div class="repo-nav-contents">
    <ul class="repo-menu">
      <li class="tooltipped leftwards" title="Code">
        <a href="/GUDDI/docs" aria-label="Code" class="js-selected-navigation-item selected" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /GUDDI/docs">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/GUDDI/docs/issues" aria-label="Issues" class="js-selected-navigation-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /GUDDI/docs/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/GUDDI/docs/pulls" aria-label="Pull Requests" class="js-selected-navigation-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /GUDDI/docs/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/GUDDI/docs/wiki" aria-label="Wiki" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_wiki /GUDDI/docs/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>


    </ul>
    <div class="repo-menu-separator"></div>
    <ul class="repo-menu">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/GUDDI/docs/pulse" aria-label="Pulse" class="js-selected-navigation-item " data-pjax="true" data-selected-links="pulse /GUDDI/docs/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/GUDDI/docs/graphs" aria-label="Graphs" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_graphs repo_contributors /GUDDI/docs/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/GUDDI/docs/network" aria-label="Network" class="js-selected-navigation-item js-disable-pjax" data-selected-links="repo_network /GUDDI/docs/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

    </ul>

      <div class="repo-menu-separator"></div>
      <ul class="repo-menu">
        <li class="tooltipped leftwards" title="Settings">
          <a href="/GUDDI/docs/settings" data-pjax aria-label="Settings">
            <span class="octicon octicon-tools"></span> <span class="full-word">Settings</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </a>
        </li>
      </ul>
  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=push">
  <h3><strong>HTTPS</strong> clone URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/GUDDI/docs.git" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/GUDDI/docs.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=push">
  <h3><strong>SSH</strong> clone URL</h3>

  <input type="text" class="clone js-url-field"
         value="git@github.com:GUDDI/docs.git" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:GUDDI/docs.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=push">
  <h3><strong>Subversion</strong> checkout URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/GUDDI/docs" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/GUDDI/docs" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>



<p class="clone-options">You can clone with
    <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
    <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
    <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>,
  and <a href="https://help.github.com/articles/which-remote-url-should-i-use">other methods.</a>
</p>



                <a href="/GUDDI/docs/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:942811646664cb0b77edb0b127a1793e -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:942811646664cb0b77edb0b127a1793e -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/GUDDI/docs/find/master" data-pjax data-hotkey="t" style="display:none">Show File Finder</a>

<div class="file-navigation">
  


<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/GUDDI/docs/blob/master/sgbd/functions_source/CargaGuddiHomologar.sql" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" data-skip-pjax="true" rel="nofollow" title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <form accept-charset="UTF-8" action="/GUDDI/docs/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="KZiex8hUgvKxMJko9rLeeu86mBchGPC6b2JUO4iQ5m0=" /></div>
            <span class="octicon octicon-git-branch-create select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <h4>Create branch: <span class="js-new-item-name"></span></h4>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master" />
            <input type="hidden" name="path" id="branch" value="sgbd/functions_source/CargaGuddiHomologar.sql" />
          </form> <!-- /.select-menu-item -->

      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/GUDDI/docs" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">docs</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/GUDDI/docs/tree/master/sgbd" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">sgbd</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/GUDDI/docs/tree/master/sgbd/functions_source" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">functions_source</span></a></span><span class="separator"> / </span><strong class="final-path">CargaGuddiHomologar.sql</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="sgbd/functions_source/CargaGuddiHomologar.sql" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/dee3cd0f690db1e719ba1c35bbed605e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/thiagosoares" rel="author">thiagosoares</a></span>
    <time class="js-relative-date" datetime="2013-07-18T11:58:57-07:00" title="2013-07-18 11:58:57">July 18, 2013</time>
    <div class="commit-title">
        <a href="/GUDDI/docs/commit/d891bf533e46b01152f88a86cb2cf5b3afe7d7c0" class="message" data-pjax="true">Update CargaGuddiHomologar.sql</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/dee3cd0f690db1e719ba1c35bbed605e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/thiagosoares">thiagosoares</a>
        </li>
      </ul>
    </div>
  </div>


<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>146 lines (115 sloc)</span>
        <span>15.454 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
                <a class="minibutton"
                   href="/GUDDI/docs/edit/master/sgbd/functions_source/CargaGuddiHomologar.sql"
                   data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
          <a href="/GUDDI/docs/raw/master/sgbd/functions_source/CargaGuddiHomologar.sql" class="button minibutton " id="raw-url">Raw</a>
            <a href="/GUDDI/docs/blame/master/sgbd/functions_source/CargaGuddiHomologar.sql" class="button minibutton ">Blame</a>
          <a href="/GUDDI/docs/commits/master/sgbd/functions_source/CargaGuddiHomologar.sql" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
            <a class="minibutton danger empty-icon tooltipped downwards"
               href="/GUDDI/docs/delete/master/sgbd/functions_source/CargaGuddiHomologar.sql"
               title="" data-method="post" rel="nofollow">
            Delete
          </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-sql js-blob-data">
      <table class="file-code file-diff">
        <tr class="file-code-line">
          <td class="blob-line-nums">
            <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>

          </td>
          <td class="blob-line-code">
                  <div class="highlight"><pre><div class='line' id='LC1'><br/></div><div class='line' id='LC2'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;orgao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">uf</span><span class="p">,</span><span class="n">codigo</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">endereco</span><span class="p">,</span><span class="n">nomecontato</span><span class="p">,</span><span class="n">razaosocial</span><span class="p">,</span><span class="n">sigla</span><span class="p">,</span><span class="n">url</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;SERPRO&#39;</span><span class="p">,</span><span class="s1">&#39;DF&#39;</span><span class="p">,</span><span class="s1">&#39;SERPRO&#39;</span><span class="p">,</span><span class="s1">&#39;serpro@serpro.pa.gov.br&#39;</span><span class="p">,</span><span class="s1">&#39;Rua 123&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">,</span><span class="s1">&#39;SERVIÇO FEDERAL DE PROCESSAMENTO DE DADOS&#39;</span><span class="p">,</span><span class="s1">&#39;SERPRO&#39;</span><span class="p">,</span><span class="s1">&#39;http://www.serpro.gov.br&#39;</span><span class="p">);</span></div><div class='line' id='LC3'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;orgao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">uf</span><span class="p">,</span><span class="n">codigo</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">endereco</span><span class="p">,</span><span class="n">nomecontato</span><span class="p">,</span><span class="n">razaosocial</span><span class="p">,</span><span class="n">sigla</span><span class="p">,</span><span class="n">url</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;PRODEPA&#39;</span><span class="p">,</span><span class="s1">&#39;PA&#39;</span><span class="p">,</span><span class="s1">&#39;PRODEPA&#39;</span><span class="p">,</span><span class="s1">&#39;prodepa@prodepa.pa.gov.br&#39;</span><span class="p">,</span><span class="s1">&#39;Rodovia Augusto Montenegro km 10 · Centro Administrativo do Estado&#39;</span><span class="p">,</span><span class="s1">&#39;CAP&#39;</span><span class="p">,</span><span class="s1">&#39;PRODEPA&#39;</span><span class="p">,</span><span class="s1">&#39;PRODEPA&#39;</span><span class="p">,</span><span class="s1">&#39;http://www.prodepa.pa.gov.br/&#39;</span><span class="p">);</span></div><div class='line' id='LC4'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;orgao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">uf</span><span class="p">,</span><span class="n">codigo</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">endereco</span><span class="p">,</span><span class="n">nomecontato</span><span class="p">,</span><span class="n">razaosocial</span><span class="p">,</span><span class="n">sigla</span><span class="p">,</span><span class="n">url</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;TRT&#39;</span><span class="p">,</span><span class="s1">&#39;PA&#39;</span><span class="p">,</span><span class="s1">&#39;TRT&#39;</span><span class="p">,</span><span class="s1">&#39;Umarizal - CEP 66050-100 - Belém-Pará-Amazônia-Brasil&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">,</span><span class="s1">&#39;TRE&#39;</span><span class="p">,</span><span class="s1">&#39;TRE&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">,</span><span class="s1">&#39;http://www.trt8.jus.br/&#39;</span><span class="p">);</span></div><div class='line' id='LC5'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;orgao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">uf</span><span class="p">,</span><span class="n">codigo</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">endereco</span><span class="p">,</span><span class="n">nomecontato</span><span class="p">,</span><span class="n">razaosocial</span><span class="p">,</span><span class="n">sigla</span><span class="p">,</span><span class="n">url</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;TJE&#39;</span><span class="p">,</span><span class="s1">&#39;PA&#39;</span><span class="p">,</span><span class="s1">&#39;TJE&#39;</span><span class="p">,</span><span class="s1">&#39;tje@tje.gov&#39;</span><span class="p">,</span><span class="s1">&#39;Av. Almirante Barroso nº 3089 - Bairro: Souza - Belém - PA&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">,</span><span class="s1">&#39;TJE&#39;</span><span class="p">,</span><span class="s1">&#39;TJE&#39;</span><span class="p">,</span><span class="s1">&#39;http://www.tjpa.jus.br&#39;</span><span class="p">);</span></div><div class='line' id='LC6'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">orgao_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC7'><br/></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;usuario&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">senha</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">papel</span><span class="p">,</span><span class="n">ativo</span><span class="p">,</span><span class="n">usuario</span><span class="p">,</span><span class="n">aminesia</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;System Admininstrator&#39;</span><span class="p">,</span><span class="s1">&#39;e10adc3949ba59abbe56e057f20f883e&#39;</span><span class="p">,</span><span class="s1">&#39;admin@guddi.org&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">4</span><span class="p">,</span><span class="k">true</span><span class="p">,</span><span class="s1">&#39;admin&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">);</span></div><div class='line' id='LC10'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;usuario&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">senha</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">papel</span><span class="p">,</span><span class="n">ativo</span><span class="p">,</span><span class="n">usuario</span><span class="p">,</span><span class="n">aminesia</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;Guest User&#39;</span><span class="p">,</span><span class="s1">&#39;e10adc3949ba59abbe56e057f20f883e&#39;</span><span class="p">,</span><span class="s1">&#39;guest@guddi.org&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="k">true</span><span class="p">,</span><span class="s1">&#39;guest&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">);</span></div><div class='line' id='LC11'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;usuario&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">senha</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">papel</span><span class="p">,</span><span class="n">ativo</span><span class="p">,</span><span class="n">usuario</span><span class="p">,</span><span class="n">aminesia</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;System Manager&#39;</span><span class="p">,</span><span class="s1">&#39;e10adc3949ba59abbe56e057f20f883e&#39;</span><span class="p">,</span><span class="s1">&#39;manager@guddi.org&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="k">true</span><span class="p">,</span><span class="s1">&#39;manager&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">);</span></div><div class='line' id='LC12'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;usuario&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">senha</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">papel</span><span class="p">,</span><span class="n">ativo</span><span class="p">,</span><span class="n">usuario</span><span class="p">,</span><span class="n">aminesia</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;thiago Soares&#39;</span><span class="p">,</span><span class="s1">&#39;48772a0046f9ee8e0531bba30f280005&#39;</span><span class="p">,</span><span class="s1">&#39;thiago.soares@guddi.org&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="k">true</span><span class="p">,</span><span class="s1">&#39;thiago.soares&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">);</span></div><div class='line' id='LC13'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;usuario&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">senha</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">papel</span><span class="p">,</span><span class="n">ativo</span><span class="p">,</span><span class="n">usuario</span><span class="p">,</span><span class="n">aminesia</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;Clovis Lemes Ferreira Junior&#39;</span><span class="p">,</span><span class="s1">&#39;0c3afc&#39;</span><span class="p">,</span><span class="s1">&#39;clovisjunior2009@gmail.com&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="mi">4</span><span class="p">,</span><span class="k">true</span><span class="p">,</span><span class="s1">&#39;usuario&#39;</span><span class="p">,</span><span class="s1">&#39;a1568531233398fcaf75b0c3afcaca4d&#39;</span><span class="p">);</span></div><div class='line' id='LC14'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;usuario&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">senha</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">papel</span><span class="p">,</span><span class="n">ativo</span><span class="p">,</span><span class="n">usuario</span><span class="p">,</span><span class="n">aminesia</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">7</span><span class="p">,</span><span class="s1">&#39;Teste de Manager&#39;</span><span class="p">,</span><span class="s1">&#39;47f477&#39;</span><span class="p">,</span><span class="s1">&#39;manager@manager.com&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="k">true</span><span class="p">,</span><span class="s1">&#39;manager2&#39;</span><span class="p">,</span><span class="s1">&#39;a10f06547f79a8285b06047f47793c64&#39;</span><span class="p">);</span></div><div class='line' id='LC15'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;usuario&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">senha</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">papel</span><span class="p">,</span><span class="n">ativo</span><span class="p">,</span><span class="n">usuario</span><span class="p">,</span><span class="n">aminesia</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">8</span><span class="p">,</span><span class="s1">&#39;Paulo Gladson&#39;</span><span class="p">,</span><span class="s1">&#39;a5924b&#39;</span><span class="p">,</span><span class="s1">&#39;gladisonico@gladisonico.com&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">4</span><span class="p">,</span><span class="k">true</span><span class="p">,</span><span class="s1">&#39;gladisonico&#39;</span><span class="p">,</span><span class="s1">&#39;068c519cab5d63b2665fda5924b02eb8&#39;</span><span class="p">);</span></div><div class='line' id='LC16'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;usuario&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">senha</span><span class="p">,</span><span class="n">email</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">papel</span><span class="p">,</span><span class="n">ativo</span><span class="p">,</span><span class="n">usuario</span><span class="p">,</span><span class="n">aminesia</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">10</span><span class="p">,</span><span class="s1">&#39;João&#39;</span><span class="p">,</span><span class="s1">&#39;71606f&#39;</span><span class="p">,</span><span class="s1">&#39;joao@joao.com&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="k">false</span><span class="p">,</span><span class="s1">&#39;joao&#39;</span><span class="p">,</span><span class="s1">&#39;b662950a3b872e8e0126371606f41296&#39;</span><span class="p">);</span></div><div class='line' id='LC17'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">usuario_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;Porto Sem Papel&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC20'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;Sistema Integrado de Administração de Serviços&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC21'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;PAS Serpro&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC22'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;Governo Digital&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC23'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">5</span><span class="p">,</span><span class="s1">&#39;Controle de Acesso&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC24'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;e-Protocolo&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC25'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">7</span><span class="p">,</span><span class="s1">&#39;SispatWeb&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC26'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">8</span><span class="p">,</span><span class="s1">&#39;Imobiliario&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC27'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">9</span><span class="p">,</span><span class="s1">&#39;NucleoPA&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC28'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">10</span><span class="p">,</span><span class="s1">&#39;Certidão Online&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC29'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">12</span><span class="p">,</span><span class="s1">&#39;Push&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC30'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">13</span><span class="p">,</span><span class="s1">&#39;Portal de Consultas&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC31'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">14</span><span class="p">,</span><span class="s1">&#39;TJ Consultas&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC32'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;sistema&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">id_orgao</span><span class="p">,</span><span class="n">publico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">15</span><span class="p">,</span><span class="s1">&#39;Sistema Sentinela&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="k">true</span><span class="p">);</span></div><div class='line' id='LC33'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">sistema_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">url</span><span class="p">,</span><span class="n">id_sistema</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;http://aplicacoes.mds.gov.br/teste/webservices/PPSPService&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;WSDL&#39;</span><span class="p">,</span><span class="s1">&#39;Porto Sem Papel&#39;</span><span class="p">,</span><span class="s1">&#39;O PSP informatiza os procedimentos e integra, na medida em que promove a comunicação de dados entre os agentes intervenientes no processo portuário, eliminando o trâmite de 112 documentos, em diversas vias, e 935 informações em duplicidade junto às seis autoridades anuentes (Polícia Federal, Anvisa, Delegacia da Receita Federal, Vigiagro e Autoridade Portuária), preservando todos os seus aspectos inerentes ao sigilo e a segurança das informações nele produzidas. Isso irá reduzir em média 25% o tempo de estadia dos navios nos portos.&#39;</span><span class="p">);</span></div><div class='line' id='LC36'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">url</span><span class="p">,</span><span class="n">id_sistema</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;http://200.120.41.331:9080/SIAS&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;REST&#39;</span><span class="p">,</span><span class="s1">&#39;SIAS&#39;</span><span class="p">,</span><span class="s1">&#39;O Siasg é o sistema informatizado de apoio às atividades operacionais do Sistema de Serviços Gerais. A solução tem sido uma ferramenta importante para a modernização da área de serviços gerais na Administração Federal, em especial no cadastramento de fornecedores e de catálogo de materiais e serviços e no registro de preços de bens e serviços.Assim, o sistema é capaz de agilizar os processos de compra e promover a transparência dos atos do governo ao divulgar informações sobre os processos licitatórios. O sistema foi desenvolvido para o Ministério do Planejamento, Orçamento e Gestão (MPOG).&#39;</span><span class="p">);</span></div><div class='line' id='LC37'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">url</span><span class="p">,</span><span class="n">id_sistema</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;http://aplicacoes.mds.gov.br/teste/webservices/PASService&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;WSDL&#39;</span><span class="p">,</span><span class="s1">&#39;CENTRAL SERVIÇOS&#39;</span><span class="p">,</span><span class="s1">&#39;A Central de Serviços Serpro (CSS) é o canal de comunicação mais ágil entre os clientes da empresa ou usuários dos serviços Serpro com as equipes de especialistas. Confira as formas de abrir um acionamento na central e compreenda o seu funcionamento.&#39;</span><span class="p">);</span></div><div class='line' id='LC38'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">url</span><span class="p">,</span><span class="n">id_sistema</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;http://sistemas.pa.gov.br/governodigital/ws/GovernoDigitalFacadeBeanWS?wsdl&#39;</span><span class="p">,</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;WSDL&#39;</span><span class="p">,</span><span class="s1">&#39;Portal do Governo Digital&#39;</span><span class="p">,</span><span class="s1">&#39;A partir de 1º de novembro de 2012 uma novidade vai transformar o modo de acesso de usuários da Prodepa: é o Governo Digital, um acesso único a todos os sistemas desenvolvidos pela empresa.E o melhor, é que nada mudou. Para acessar o Governo Digital basta entrar na página do sistema que você utiliza, com o mesmo login e senha para autenticar sua conta. As diversas aplicações ou serviços estarão disponíveis num só lugar.Para proporcionar a implantação do sistema único, a Prodepa realiza a migração dos demais sistemas. Nesse sentido, durante este dia serão feitos ainda alguns ajustes técnicos para a total excelência do serviço.&#39;</span><span class="p">);</span></div><div class='line' id='LC39'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">url</span><span class="p">,</span><span class="n">id_sistema</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">5</span><span class="p">,</span><span class="s1">&#39;http://10.1.11.14:8080/controleacesso/ws/ControleAcessoFacadeBeanWS?wsdl&#39;</span><span class="p">,</span><span class="mi">5</span><span class="p">,</span><span class="s1">&#39;WSDL&#39;</span><span class="p">,</span><span class="s1">&#39;Controle de Acesso&#39;</span><span class="p">,</span><span class="s1">&#39;O sistema de controle de acesso controle asa permissões dos usuários em sistemas desenvolvidos pela prodepa&#39;</span><span class="p">);</span></div><div class='line' id='LC40'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">url</span><span class="p">,</span><span class="n">id_sistema</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;http://10.1.11.14:8080/eprotocolo/ws/DocumentoFacadeBeanWS?wsdl&#39;</span><span class="p">,</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;WSDL&#39;</span><span class="p">,</span><span class="s1">&#39;eProtocolo&#39;</span><span class="p">,</span><span class="s1">&#39;O eprotocolo fornece controle digital sobre os documentos que tramitam no estado&#39;</span><span class="p">);</span></div><div class='line' id='LC41'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">descritor_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC42'><br/></div><div class='line' id='LC43'><br/></div><div class='line' id='LC44'><span class="c1">--Servicos 1-Porto Sem Papel </span></div><div class='line' id='LC45'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;retorno&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">tipo</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;Flag Indicativa do cadastro com sucesso&#39;</span><span class="p">,</span><span class="s1">&#39;Boolean&#39;</span><span class="p">);</span></div><div class='line' id='LC46'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;servico&quot;</span>  <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">id_retorno</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;cadastrarNotaFiscal&#39;</span><span class="p">,</span><span class="s1">&#39;Metodo para cadastro de uma nota fiscal&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC47'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;Número da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;numero&#39;</span><span class="p">,</span><span class="s1">&#39;String&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC48'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;Data da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;dataEmissao&#39;</span><span class="p">,</span><span class="s1">&#39;Date&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC49'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;Valor da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;valorTotal&#39;</span><span class="p">,</span><span class="s1">&#39;Double&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC50'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;Total de itens da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;totalItens&#39;</span><span class="p">,</span><span class="s1">&#39;Long&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC51'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;Nota Fiscal não localizada&#39;</span><span class="p">,</span><span class="s1">&#39;erro.nf.01&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC52'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;Nota Fiscal invalida&#39;</span><span class="p">,</span><span class="s1">&#39;erro.nf.02&#39;</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC53'><br/></div><div class='line' id='LC54'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;retorno&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">tipo</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;Flag Indicativa da alteracao com sucesso&#39;</span><span class="p">,</span><span class="s1">&#39;Boolean&#39;</span><span class="p">);</span></div><div class='line' id='LC55'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;servico&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">id_retorno</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;alterarNotaFiscal&#39;</span><span class="p">,</span><span class="s1">&#39;Metodo para cadastro de uma nota fiscal&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC56'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">5</span><span class="p">,</span><span class="s1">&#39;Número da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;numero&#39;</span><span class="p">,</span><span class="s1">&#39;String&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC57'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;Data da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;dataEmissao&#39;</span><span class="p">,</span><span class="s1">&#39;Date&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC58'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">7</span><span class="p">,</span><span class="s1">&#39;Valor da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;valorTotal&#39;</span><span class="p">,</span><span class="s1">&#39;Double&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC59'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">8</span><span class="p">,</span><span class="s1">&#39;Total de itens da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;totalItens&#39;</span><span class="p">,</span><span class="s1">&#39;Long&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC60'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;Nota Fiscal não localizada&#39;</span><span class="p">,</span><span class="s1">&#39;erro.nf.03&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC61'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;Nota Fiscal invalida&#39;</span><span class="p">,</span><span class="s1">&#39;erro.nf.04&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC62'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">5</span><span class="p">,</span><span class="s1">&#39;Nota Fiscal bloqueada para edição&#39;</span><span class="p">,</span><span class="s1">&#39;erro.nf.05&#39;</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC63'><br/></div><div class='line' id='LC64'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;retorno&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">tipo</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;Flag Indicativa da exclusão com sucesso&#39;</span><span class="p">,</span><span class="s1">&#39;Boolean&#39;</span><span class="p">);</span></div><div class='line' id='LC65'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;servico&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">id_retorno</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;excluirNotaFiscal&#39;</span><span class="p">,</span><span class="s1">&#39;Metodo para cadastro de uma nota fiscal&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">);</span></div><div class='line' id='LC66'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">9</span><span class="p">,</span><span class="s1">&#39;Identificador da nota fiscal&#39;</span><span class="p">,</span><span class="s1">&#39;id&#39;</span><span class="p">,</span><span class="s1">&#39;Long&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">);</span></div><div class='line' id='LC67'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;Nota Fiscal não localizada&#39;</span><span class="p">,</span><span class="s1">&#39;erro.nf.06&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">);</span></div><div class='line' id='LC68'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">7</span><span class="p">,</span><span class="s1">&#39;Nota Fiscal invalida&#39;</span><span class="p">,</span><span class="s1">&#39;erro.nf.07&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">);</span></div><div class='line' id='LC69'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">8</span><span class="p">,</span><span class="s1">&#39;Nota Fiscal bloqueada para edição&#39;</span><span class="p">,</span><span class="s1">&#39;erro.nf.08&#39;</span><span class="p">,</span><span class="mi">3</span><span class="p">);</span></div><div class='line' id='LC70'><br/></div><div class='line' id='LC71'><br/></div><div class='line' id='LC72'><span class="c1">--Servicos 4-Governo Digital</span></div><div class='line' id='LC73'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;retorno&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">tipo</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;Lista de Sistemas&#39;</span><span class="p">,</span><span class="s1">&#39;ArrayList&lt;Sistema&gt;&#39;</span><span class="p">);</span></div><div class='line' id='LC74'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;servico&quot;</span>  <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">id_retorno</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;buscarSistemasVinculados&#39;</span><span class="p">,</span><span class="s1">&#39;Metodo para recuperar a list de sistemas do usuário&#39;</span><span class="p">,</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC75'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">10</span><span class="p">,</span><span class="s1">&#39;Identificador do usuário&#39;</span><span class="p">,</span><span class="s1">&#39;id&#39;</span><span class="p">,</span><span class="s1">&#39;Long&#39;</span><span class="p">,</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC76'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">9</span><span class="p">,</span><span class="s1">&#39;Usuário não localizado&#39;</span><span class="p">,</span><span class="s1">&#39;erro.usuario.01&#39;</span><span class="p">,</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC77'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">10</span><span class="p">,</span><span class="s1">&#39;Usuário bloqueado&#39;</span><span class="p">,</span><span class="s1">&#39;erro.usuario.02&#39;</span><span class="p">,</span><span class="mi">4</span><span class="p">);</span></div><div class='line' id='LC78'><br/></div><div class='line' id='LC79'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;retorno&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">tipo</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">5</span><span class="p">,</span><span class="s1">&#39;Flag Indicativa da alteracao com sucesso&#39;</span><span class="p">,</span><span class="s1">&#39;Boolean&#39;</span><span class="p">);</span></div><div class='line' id='LC80'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;servico&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">id_retorno</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">5</span><span class="p">,</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;buscarUsuarios&#39;</span><span class="p">,</span><span class="s1">&#39;Metodo para pesquisa de usuários&#39;</span><span class="p">,</span><span class="mi">5</span><span class="p">);</span></div><div class='line' id='LC81'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span><span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">11</span><span class="p">,</span><span class="s1">&#39;Nome, login ou documento do usuário&#39;</span><span class="p">,</span><span class="s1">&#39;descricao&#39;</span><span class="p">,</span><span class="s1">&#39;String&#39;</span><span class="p">,</span><span class="mi">5</span><span class="p">);</span></div><div class='line' id='LC82'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">11</span><span class="p">,</span><span class="s1">&#39;Parâmetros inválidos&#39;</span><span class="p">,</span><span class="s1">&#39;erro.pesquisa.03&#39;</span><span class="p">,</span><span class="mi">5</span><span class="p">);</span></div><div class='line' id='LC83'><br/></div><div class='line' id='LC84'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;retorno&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">tipo</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;Gson com estatisticas de acesso do Sistema&#39;</span><span class="p">,</span><span class="s1">&#39;Text&#39;</span><span class="p">);</span></div><div class='line' id='LC85'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;servico&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">id_retorno</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;obterEstatisticas&#39;</span><span class="p">,</span><span class="s1">&#39;Metodo para obter Gson com estatisticas de acesso do Sistema&#39;</span><span class="p">,</span><span class="mi">6</span><span class="p">);</span></div><div class='line' id='LC86'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">12</span><span class="p">,</span><span class="s1">&#39;identificador do Sistema&#39;</span><span class="p">,</span><span class="s1">&#39;id&#39;</span><span class="p">,</span><span class="s1">&#39;Long&#39;</span><span class="p">,</span><span class="mi">6</span><span class="p">);</span></div><div class='line' id='LC87'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">12</span><span class="p">,</span><span class="s1">&#39;Sistema não localizado&#39;</span><span class="p">,</span><span class="s1">&#39;erro.estatistica.06&#39;</span><span class="p">,</span><span class="mi">6</span><span class="p">);</span></div><div class='line' id='LC88'><br/></div><div class='line' id='LC89'><span class="c1">--Servicos 6-eProtocolo</span></div><div class='line' id='LC90'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;retorno&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">tipo</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">7</span><span class="p">,</span><span class="s1">&#39;Objeto com detalhamento do estado atual de um protocolo&#39;</span><span class="p">,</span><span class="s1">&#39;DetalhamentoProtocolo&#39;</span><span class="p">);</span></div><div class='line' id='LC91'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;servico&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">id_retorno</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">7</span><span class="p">,</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;consultarProtocolo&#39;</span><span class="p">,</span><span class="s1">&#39;Metodo para obter o detalhamento do estado atual de um protocolo&#39;</span><span class="p">,</span><span class="mi">7</span><span class="p">);</span></div><div class='line' id='LC92'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span><span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">13</span><span class="p">,</span><span class="s1">&#39;Identificador do protocolo&#39;</span><span class="p">,</span><span class="s1">&#39;protocolo&#39;</span><span class="p">,</span><span class="s1">&#39;String&#39;</span><span class="p">,</span><span class="mi">7</span><span class="p">);</span></div><div class='line' id='LC93'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">13</span><span class="p">,</span><span class="s1">&#39;Protocolo não localizado&#39;</span><span class="p">,</span><span class="s1">&#39;erro.protocolo.01&#39;</span><span class="p">,</span><span class="mi">7</span><span class="p">);</span></div><div class='line' id='LC94'><br/></div><div class='line' id='LC95'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;retorno&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">tipo</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">8</span><span class="p">,</span><span class="s1">&#39;Lista de tramitações de um protocolo&#39;</span><span class="p">,</span><span class="s1">&#39;ArrayList&lt;Tramitacao&gt;&#39;</span><span class="p">);</span></div><div class='line' id='LC96'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;servico&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">id_retorno</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">8</span><span class="p">,</span><span class="mi">6</span><span class="p">,</span><span class="s1">&#39;consultarTramitacoes&#39;</span><span class="p">,</span><span class="s1">&#39;Metodo para obter a lista de tramitações de um documento&#39;</span><span class="p">,</span><span class="mi">8</span><span class="p">);</span></div><div class='line' id='LC97'><br/></div><div class='line' id='LC98'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;atributo&quot;</span><span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">nome</span><span class="p">,</span><span class="n">tipo</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">14</span><span class="p">,</span><span class="s1">&#39;Identificador do protocolo&#39;</span><span class="p">,</span><span class="s1">&#39;protocolo&#39;</span><span class="p">,</span><span class="s1">&#39;String&#39;</span><span class="p">,</span><span class="mi">8</span><span class="p">);</span></div><div class='line' id='LC99'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;excecao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">descricao</span><span class="p">,</span><span class="n">identificador</span><span class="p">,</span><span class="n">id_servico</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">14</span><span class="p">,</span><span class="s1">&#39;Protocolo não localizado&#39;</span><span class="p">,</span><span class="s1">&#39;erro.protocolo.02&#39;</span><span class="p">,</span><span class="mi">8</span><span class="p">);</span></div><div class='line' id='LC100'><br/></div><div class='line' id='LC101'><br/></div><div class='line' id='LC102'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">servico_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC103'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">atributo_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC104'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">retorno_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC105'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">excecao_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC106'><span class="k">ALTER</span> <span class="n">SEQUENCE</span> <span class="n">guddi</span><span class="p">.</span><span class="n">retorno_id_seq</span> <span class="k">RESTART</span> <span class="k">WITH</span> <span class="mi">100</span><span class="p">;</span></div><div class='line' id='LC107'><br/></div><div class='line' id='LC108'><br/></div><div class='line' id='LC109'><span class="c1">--Marcacoes</span></div><div class='line' id='LC110'><br/></div><div class='line' id='LC111'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="s1">&#39;SERPRO&#39;</span><span class="p">);</span></div><div class='line' id='LC112'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="s1">&#39;PRODEPA&#39;</span><span class="p">);</span></div><div class='line' id='LC113'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">3</span><span class="p">,</span><span class="s1">&#39;TRE&#39;</span><span class="p">);</span></div><div class='line' id='LC114'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span><span class="s1">&#39;TJE&#39;</span><span class="p">);</span></div><div class='line' id='LC115'><br/></div><div class='line' id='LC116'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">11</span><span class="p">,</span><span class="s1">&#39;porto sem papel&#39;</span><span class="p">);</span></div><div class='line' id='LC117'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">12</span><span class="p">,</span><span class="s1">&#39;porto&#39;</span><span class="p">);</span></div><div class='line' id='LC118'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">13</span><span class="p">,</span><span class="s1">&#39;papel&#39;</span><span class="p">);</span></div><div class='line' id='LC119'><br/></div><div class='line' id='LC120'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></div><div class='line' id='LC121'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">11</span><span class="p">);</span></div><div class='line' id='LC122'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">12</span><span class="p">);</span></div><div class='line' id='LC123'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">13</span><span class="p">);</span></div><div class='line' id='LC124'><br/></div><div class='line' id='LC125'><br/></div><div class='line' id='LC126'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">14</span><span class="p">,</span><span class="s1">&#39;e-protocolo&#39;</span><span class="p">);</span></div><div class='line' id='LC127'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">15</span><span class="p">,</span><span class="s1">&#39;eprotocolo&#39;</span><span class="p">);</span></div><div class='line' id='LC128'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">16</span><span class="p">,</span><span class="s1">&#39;protocolo&#39;</span><span class="p">);</span></div><div class='line' id='LC129'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">17</span><span class="p">,</span><span class="s1">&#39;Pará&#39;</span><span class="p">);</span></div><div class='line' id='LC130'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;marcacao&quot;</span> <span class="p">(</span><span class="n">id</span><span class="p">,</span><span class="n">marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">18</span><span class="p">,</span><span class="s1">&#39;Para&#39;</span><span class="p">);</span></div><div class='line' id='LC131'><br/></div><div class='line' id='LC132'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="mi">2</span><span class="p">);</span></div><div class='line' id='LC133'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="mi">14</span><span class="p">);</span></div><div class='line' id='LC134'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="mi">15</span><span class="p">);</span></div><div class='line' id='LC135'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="mi">16</span><span class="p">);</span></div><div class='line' id='LC136'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="mi">16</span><span class="p">);</span></div><div class='line' id='LC137'><span class="k">INSERT</span> <span class="k">INTO</span> <span class="ss">&quot;guddi&quot;</span><span class="p">.</span><span class="ss">&quot;descritor_marcacao&quot;</span> <span class="p">(</span><span class="n">id_descritor</span><span class="p">,</span><span class="n">id_marcacao</span><span class="p">)</span> <span class="k">VALUES</span> <span class="p">(</span><span class="mi">6</span><span class="p">,</span><span class="mi">17</span><span class="p">);</span></div><div class='line' id='LC138'><span class="c1">---continuar</span></div><div class='line' id='LC139'><br/></div><div class='line' id='LC140'><span class="c1">--delete from guddi.descritor_marcacao</span></div><div class='line' id='LC141'><br/></div><div class='line' id='LC142'><span class="c1">--delete from guddi.marcacao</span></div><div class='line' id='LC143'><br/></div><div class='line' id='LC144'><span class="c1">--ok</span></div><div class='line' id='LC145'><br/></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.08873s from fe2.rs.github.com">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/GUDDI/docs/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

    
  </body>
</html>

