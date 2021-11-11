<span class="nav__toggler"></span>
<nav aria-label="<@liferay.language key="site-pages" />" class="${nav_css_class} jmheader__navbar" id="navigation" role="navigation">
	
	<ul role="menubar" class="jmheader__navlinks">
		<#list nav_items as nav_item>
			<#assign nav_item_attr_has_popup = "" nav_item_css_class = "" nav_item_layout = nav_item.getLayout() />

			<#if nav_item.isSelected()>
				<#assign nav_item_attr_has_popup = "aria-haspopup='true'" nav_item_css_class = "selected" />
			</#if>

		<li class="jmheader__navlist ${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
		 <span class="hidden__overlay"></span>
		 <a ${nav_item_attr_has_popup}  class="header__menu" href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem">
		  <span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span>
		  </a>
           <span class="jmarrow__right"></span>
                 
			<#if nav_item.hasChildren()>
			  <ul class="child-menu" role="menu">
				<#list nav_item.getChildren() as nav_child>
				  <#assign nav_child_css_class = "" />

				   <#if nav_item.isSelected()><#assign nav_child_css_class = "selected" />
		        	</#if>
				
                   <div class="child-header">
				     <li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
					${nav_child.getName()}

					   <#if nav_child.hasChildren()>
						<#list nav_child.getChildren() as nav_child1>
						 <div>
						  <a href="${nav_child1.getURL()}" ${nav_child1.getTarget()} role="menuitem" class="sub-child">
						  ${nav_child1.getName()}</a>
                         </div>
				        </#list>
					  </#if>
					  	
		          	 </li>
					</div>
					
				</#list>
						
					<div class="jmprdt__btn">
					<button class=" jmlfry__btn" >SEE ALL PRODUCTS <span class="icon-arrow--right"></span></button>
					</div>
				</ul>
			<!--mobile view submenu: start --!>
				
		    <div class="submenu__mb">
		     <span class="back__arrow" ></span>
			 <h4 class="submenu__heading">  ${nav_item.getName()}</h4>
			 
			 <ul class="submenu__child" role="menu">
				<#list nav_item.getChildren() as nav_child>
					<#assign nav_child_css_class = "" />

					 <#if nav_item.isSelected()><#assign nav_child_css_class = "selected" />			
					 </#if>

                     <div class="submenu__content">
					   <li class="${nav_child_css_class} submenu__list" id="layout_${nav_child.getLayoutId()}" role="presentation">
						${nav_child.getName()}

						<#if nav_child.hasChildren()>
						 <#list nav_child.getChildren() as nav_child1>
						  <div>
							<a href="${nav_child1.getURL()}" ${nav_child1.getTarget()} role="menuitem" class="sub-child">${nav_child1.getName()}</a>
                          </div>
						 </#list>
						</#if>	
		          	    </li>
					  </div>
					  
				 </#list>	
			   </ul>
			   </div>
					
				</#if>
			</li>
		</#list>
	</ul>
	
	<div class="contact__container">
    <span class="jm__contact" ></span><p class="contact__text">Contact Us</p>
    </div>
</nav>
