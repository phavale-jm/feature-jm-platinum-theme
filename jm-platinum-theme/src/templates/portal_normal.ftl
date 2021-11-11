<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
    
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<div id="heading">
			<div aria-level="1" class="site-title" role="heading">
				<a class="${logo_css_class} " href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
				<img  class="logo__img" alt="${logo_description}" height="${site_logo_height}" src="${images_folder}/new__jm__images/Johnson_Matthey _Logo_blue.svg" width="${site_logo_width}" />
				<img  class="jmlogo__img--mb" alt="${logo_description}" height="${site_logo_height}" src="${images_folder}/new__jm__images/JM Logo__blue.svg" width="${site_logo_width}" />
					
				</a>
				
		<div class="jmlfry__navbar">
          <li class="jmlfry__navlist"><a href="javascript:void(0);" style="display: flex" >
          Search <span class="search"></span>  </a></li>
         
          
           <li><a href="javascript:void(0);" class="support_agent"></a></li>
                <div class="selector">
                  <div id="selectField">
                  <li><a href="javascript:void(0);" style="display: flex">
                   EN 
                   <span class="jm_arrow-right" ></span> 
                    </a>
                   </li>
                 </div> 
                <div id="list"  class="hide select__language">
                 <h3 class="jmselect__heading">Select your Location / Language</h3>
                  <ul class="options__list">              
               <li class="options"><span id="langImg"></span><p>Global - EN</p></li>
               <li class="options"><span></span><p>Poland - PL</p></li>
               <li class="options"><span></span><p>Global - EN</p></li>
                </ul>
                 </div>           
              
               </div>
             </div>

				
			</div>
		</div>

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>

		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
		
	</header>

	<section id="content">
		<h2 class="hide-accessible" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
	

	<#include "${full_templates_path}/footer.ftl" /> 
		
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

	
	
</body>

</html>