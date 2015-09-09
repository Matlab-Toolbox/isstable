
Is Stable
========

Free open version of Mathworks [isstable](http://uk.mathworks.com/help/signal/ref/isstable.html) function. 

Only implemented the versions below:
    
    flag = isstable(b,a);


EXAMPLES
========

    b = [1. 0.5, 0.5];
    a = [1, 0,   0  ];

    flag = isstable(b,a)

Installation
--

To get library clone from github:

    cd to your lib folder
    git clone https://github.com/Matlab-Toolbox/isstable.git

Add function to path:

    %% Add functions to path
    run(['/path_to_package/isstable/load_toolbox.m']);


