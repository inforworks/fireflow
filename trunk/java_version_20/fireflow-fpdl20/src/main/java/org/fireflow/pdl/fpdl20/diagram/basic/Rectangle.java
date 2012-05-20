/**
 * Copyright 2007-2010 非也
 * All rights reserved. 
 * 
 * This library is free software; you can redistribute it and/or modify it under the
 * terms of the GNU Lesser General Public License v3 as published by the Free Software
 * Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along
 * with this library; if not, see http://www.gnu.org/licenses/lgpl.html.
 *
 */
package org.fireflow.pdl.fpdl20.diagram.basic;

import org.fireflow.pdl.fpdl20.diagram.style.FulfilStyle;

/**
 *
 * @author 非也 nychen2000@163.com
 * Fire Workflow 官方网站：www.firesoa.com 或者 www.fireflow.org
 *
 */
public interface Rectangle extends Shape{
	public Label getTitleLabel();
	public void setTitleLabel(Label lb);
	
	public Label getContentLabel();
	public void setContentLabel(Label lb);
	
	public Bounds getBounds();
	public void setBounds(Bounds bounds);
	
	/**
	 * 填充颜色
	 * @return
	 */
	public FulfilStyle getFulfilStyle();
	
	public void setFulfilStyle(FulfilStyle style);
}
