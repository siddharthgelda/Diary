define("matrixGallery", ["lodash", "skins", "core", "santaProps", "utils", "galleriesCommon", "displayer"], function(a, b, c, d, e, f, g){"use strict"; function o(a, b, c){return a * b >= c?"fullView":"hiddenChildren"}function p(a){return Math.max(m, a)}var h = c.compMixins, i = f.utils.matrixCalculations, j = f.utils.matrixScalingCalculations, k = f.utils.galleriesHelperFunctions, l = e.galleriesCommonLayout, m = 70, n = ["topPadding", "imgHeightDiff"]; return{displayName:"MatrixGallery", propTypes:a.assign({renderFlags:d.Types.renderFlags.isRequired, compProp:d.Types.Component.compProp.isRequired, compData:d.Types.Component.compData.isRequired, style:d.Types.Component.style.isRequired, skin:d.Types.Component.skin.isRequired, compTheme:d.Types.Component.theme.isRequired, currentUrlPageId:d.Types.Component.currentUrlPageId.isRequired, isMobileView:d.Types.isMobileView, isMobileDevice:d.Types.Device.isMobileDevice, isTabletDevice:d.Types.Device.isTabletDevice}, d.santaTypesUtils.getSantaTypesByDefinition(g)), statics:{useSantaTypes:!0}, mixins:[h.skinBasedComp, h.skinInfo], getInitialState:function(){this.shouldResetGalleryToOriginalState = this.props.renderFlags.shouldResetGalleryToOriginalState; var a = i.getAvailableRowsNumber(this.props.compProp.maxRows, this.props.compProp.numCols, this.props.compData.items.length), c = this.props.isMobileView?"mobileView":"desktopView"; this.showMoreClicked = !1, this.galleryHeight = p(this.props.style.height), this.itemHeight = i.getItemHeight(this.props.compProp.margin, this.galleryHeight, a, k.getSkinHeightDiff(this.props.skin)), this.currentStyle = this.props.compTheme; var d = this.getParams(n, this.getDisplayerSkin()); return this.currentHeightDiff = k.getDisplayerHeightDiff(b.skins[this.getDisplayerSkin()], d, c), {numberOfRows:a, $mobile:this.props.isMobileDevice || this.props.isTabletDevice?"mobile":"notMobile", $displayDevice:c, $state:o(a, this.props.compProp.numCols, this.props.compData.items.length)}}, createDisplayer:function(a, c, d, e){var f = this.getDisplayerSkin(), g = b.skins[this.props.skin], h = g.exports && g.exports.bottomGap || 0, l = this.getParams(n, f), m = k.getDisplayerHeightDiff(b.skins[f], l, this.state.$displayDevice), o = k.getDisplayerWidthDiff(b.skins[f], this.state.$displayDevice), p = j.getSizeAfterScaling({itemHeight:e, itemWidth:d, displayerData:a, imageMode:this.props.compProp.imageMode, widthDiff:o, heightDiff:m, bottomGap:h}), q = i.getItemPosition(c, d, e, this.props.compProp.margin, this.props.compProp.numCols); return this.createChildComponent(a, "wysiwyg.viewer.components.Displayer", "imageItem", {key:a.id, ref:this.props.id + a.id + c, id:this.props.id + a.id + c, currentUrlPageId:this.props.currentUrlPageId, galleryDataId:this.props.compData.id, imageWrapperSize:p.imageWrapperSize, imageIndex:c, heightDiff:m, widthDiff:o, bottomGap:h, style:{width:p.displayerSize.width, height:p.displayerSize.height, position:"absolute", left:q.left, top:q.top}})}, createDisplayers:function(){var b = a.take(this.props.compData.items, this.props.compProp.numCols * this.state.numberOfRows), c = i.getItemWidth(this.props.compProp.margin, this.props.compProp.numCols, this.props.style.width, k.getSkinWidthDiff(this.props.skin)), d = this.itemHeight || i.getItemHeight(this.props.compProp.margin, this.galleryHeight, this.state.numberOfRows, k.getSkinHeightDiff(this.props.skin)); return a.map(b, function(a, b){return this.createDisplayer(a, b, c, d)}, this)}, componentWillReceiveProps:function(c){var d = i.getAvailableRowsNumber(c.compProp.maxRows, c.compProp.numCols, c.compData.items.length), e = {}; this.props.compProp.maxRows === c.compProp.maxRows && this.props.compProp.numCols === c.compProp.numCols && this.props.compData.items.length === c.compData.items.length || (e.numberOfRows = d, this.galleryHeight = p(k.getGalleryHeight(this.state.numberOfRows, d, this.props.compProp.margin, this.props.skin, this.galleryHeight)), e.$state = o(d, c.compProp.numCols, c.compData.items.length)), this.props.style.height !== c.style.height && (this.galleryHeight = p(c.style.height)), a.isEmpty(e) || this.setState(e), this.shouldResetGalleryToOriginalState !== c.renderFlags.shouldResetGalleryToOriginalState && (this.shouldResetGalleryToOriginalState && this.resetGalleryState && this.resetGalleryState(), this.shouldResetGalleryToOriginalState = c.renderFlags.shouldResetGalleryToOriginalState); var f = c.compTheme; if (f.skin === this.currentStyle.skin && this.shouldRecalculateHeightOnSkinParamChange(this.currentStyle.style.properties, f.style.properties)){var g = this.getDisplayerSkin(), h = this.getParams(n, g), j = k.getDisplayerHeightDiff(b.skins[g], h, this.state.$displayDevice), l = this.itemHeight || i.getItemHeight(this.props.compProp.margin, this.galleryHeight, this.state.numberOfRows, k.getSkinHeightDiff(this.props.skin)); this.itemHeight = l - (this.currentHeightDiff - j); var m = k.getSkinHeightDiff(this.props.skin); this.galleryHeight = this.state.numberOfRows * this.itemHeight + (this.state.numberOfRows - 1) * this.props.compProp.margin + m, this.currentHeightDiff = j, this.currentStyle = f}a.isEmpty(e) || this.setState(e)}, getSkinProperties:function(){var a = {showMore:{children:this.props.compProp.showMoreLabel, onClick:this.showMoreRows}, itemsContainer:{children:this.createDisplayers(), style:{height:this.galleryHeight}}, "":{"data-height-diff":k.getSkinHeightDiff(this.props.skin), "data-width-diff":k.getSkinWidthDiff(this.props.skin), "data-presented-row":this.state.numberOfRows, style:{height:this.galleryHeight}}}; return(this.showMoreClicked || "fullView" === this.state.$state) && l.updateSkinPropsForFlexibleHeightGallery(a, this.galleryHeight), a}, showMoreRows:function(){var a = i.getAvailableRowsNumber(this.state.numberOfRows + this.props.compProp.incRows, this.props.compProp.numCols, this.props.compData.items.length); this.showMoreClicked = !0, this.galleryHeight = p(k.getGalleryHeight(this.state.numberOfRows, a, this.props.compProp.margin, this.props.skin, this.galleryHeight)), this.registerReLayout(), this.setState({numberOfRows:a, $state:o(a, this.props.compProp.numCols, this.props.compData.items.length)})}, getDisplayerSkin:function(){return this.getSkinExports().imageItem.skin}, shouldRecalculateHeightOnSkinParamChange:function(b, c){var d = a.pick(b, n), e = a.pick(c, n); return!a.isEqual(d, e)}}});