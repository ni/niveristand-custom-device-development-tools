/* expandable_tree.js
[usage]            Expand/Collapse items in a tree hierachy, such as TOC of a book
[required files]   expandable_tree.css
                   common.js & it's dependency
                   arrow_open.gif 
                   arrow_close.gif
Version 2.0        This version applies to propmeth_class_hierarchy.html and checklist files
Jan 2009
Xiaochun Wu
*/

if (typeof(registerForInitPage) == "function") 
{
    registerForInitPage(setEnvironment);	
} 

//USAGE, needs to be revised.

function setEnvironment() {   
	img = [];
    preloadImages();
    switch (document.title) 
    {
        case L_VIServerClassHierarchy:
            expandedClass   = 'expanded';	
            collapsedClass  = 'collapsed';
            branchNodeTag   = 'ul';
            openAll();   
            break;            
        case L_LVStyleChecklist:           
            expandedClass   = 'expanded';
            collapsedClass  = 'expandable-head-open';            
            branchNodePos   = 'sibling';                 
            closeAll();      
            break;
        case L_BuildingAppsChecklist:           
            expandedClass   = 'expanded';
            collapsedClass  = 'expandable-head-open';            
            branchNodePos   = 'sibling';                 
            closeAll();      
            break;
        case L_GuidelinesForUsingMathScript:           
            expandedClass   = 'expanded';
            collapsedClass  = 'expandable-head-open';            
            branchNodePos   = 'sibling';                 
            closeAll();      
            break;
        case L_SupportForMathScript:           
            expandedClass   = 'expanded';
            collapsedClass  = 'expandable-head-open';            
            branchNodePos   = 'sibling';                 
            closeAll();      
            break;
        case L_SystemExplorerWindow:           
            expandedClass   = 'expanded';
            collapsedClass  = 'collapsed';            
            branchNodeTag   = 'ul';                 
            openAll();      
            break;
        default:
            break;
    }
    return;
}

function preloadImages() 
{    
    img['expanded']      = new Image();	
    img['expanded'].src  = 'arrow_open.gif';
    img['collapsed']     = new Image();
    img['collapsed'].src = 'arrow_close.gif';  
    return;    
}

function closeAll()  
{    
    var expandedItems = getElementsByClass(expandedClass);	
    for (var it=0; it<expandedItems.length; it++)  
    {
        closeBranch(expandedItems[it]);			            		
    }       
    return;
}

function openAll()  
{
    var collapsedItems = getElementsByClass(collapsedClass);	     
    for (var it=0; it<collapsedItems.length; it++)  
    {
        openBranch(collapsedItems[it]);			            		
    }
    return;
}

function getBranchNode(theBranch)
{
    var theNode = null;
    if (typeof branchNodePos !='undefined' && branchNodePos == 'sibling')
    {
        theNode = theBranch.nextSibling;
        while (theNode != null && theNode.nodeType != 1)
        {
            theNode = theNode.nextSibling;  
        } 
    }    
    else 
    {
        theNode = theBranch.getElementsByTagName(branchNodeTag); 
        if (theNode.length > 0) 
        {
            theNode = theNode[0];
        }
    }    
    if (theNode != null) 
    {
        if (theNode.childNodes.length == 0 || theNode.childNodes.length == 1 && /\s/.test(theNode.firstChild.nodeValue)) 
        {
            theNode = null;
        }    
    }    
    return theNode;
}

function closeBranch(theBranch)  
{ 	
    var theNode = getBranchNode(theBranch);
    if (theNode != null) 
    {
        theNode.style.display = 'none';	 
        switchImages(theBranch, 'collapsed');	 
    }
    return;
}

function openBranch(theBranch)  
{	
    var theNode = getBranchNode(theBranch);
    if (theNode != null) 
    {
        theNode.style.display = 'block';		
        switchImages(theBranch, 'expanded');	
    } 
    return;	
}

function switchImages(theBranch, imgIDX)  
{	
    var branchImg = theBranch.getElementsByTagName("img");
    if (branchImg[0] == null || branchImg[0].className != 'expandable_img') 
    {
        branchImg[0] = document.createElement("img");     
        branchImg[0].className = 'expandable_img';        
        theBranch.insertBefore(branchImg[0],theBranch.firstChild);
    }			    
	branchImg[0].src = img[imgIDX].src;      
    
	if (imgIDX == 'collapsed')	 
    {
        theBranch.className  = collapsedClass;
        branchImg[0].onclick = function()  
        {
            openBranch(theBranch);
        }
	}
	else  
    {
        theBranch.className  = expandedClass;
        branchImg[0].onclick = function()  
        {
            closeBranch(theBranch);
        }
	}	 
	return;	    
}