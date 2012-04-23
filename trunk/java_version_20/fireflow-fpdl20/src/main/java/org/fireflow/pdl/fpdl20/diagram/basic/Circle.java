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
import org.fireflow.pdl.fpdl20.diagram.style.LineStyle;

/**
 *
 * @author 非也 nychen2000@163.com
 * Fire Workflow 官方网站：www.firesoa.com 或者 www.fireflow.org
 *
 */
public interface Circle extends Shape{
	public Label getLabel();
	public void setLabel(Label lb);
	
	public Point getTheCenter();
	public void setTheCenter(Point p);
	
	public int getRadius();
	public void setRadius(int r);
	
	public LineStyle getBoundsStyle();
	public void setBoundsStyle(LineStyle style);
	
	public FulfilStyle getFulfilStyle();
	public void setFulfilStyle(FulfilStyle style);
}
