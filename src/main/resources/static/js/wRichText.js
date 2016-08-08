define("wRichText",["lodash","santaProps","textCommon","experiment"],function(a,b,c,d){"use strict";return{displayName:"WRichText",propTypes:{structure:b.Types.Component.structure.isRequired,compData:b.Types.Component.compData.isRequired,compProp:b.Types.Component.compProp.isRequired,renderLink:b.Types.Link.renderLink.isRequired,colorGetter:b.Types.Theme.colorGetter.isRequired,fontGetter:b.Types.Fonts.getFont.isRequired,geo:b.Types.RendererModel.geo,isMobileView:b.Types.isMobileView},statics:{useSantaTypes:!0},mixins:[c.textCompMixin],convertCompDataTextToHTML:function(b){this._componentHtml=b.compData.text||"",this._componentHtml&&(this._componentHtml=c.textComponentsUtils.convertDataQueryLinksIntoHtmlAnchors(this._componentHtml,b.compData.linkList,b.renderLink),this._componentHtml=c.textComponentsUtils.mobileTextTransformIfNeeded(this._componentHtml,a.get(b,"compProp.brightness"),b.isMobileView,a.get(b,"structure.layout.scale"),b.fontGetter,b.colorGetter),d.isOpen("clickToAction")&&(this._componentHtml=c.textComponentsUtils.createImpliedLinks(this._componentHtml,b.geo)))}}});