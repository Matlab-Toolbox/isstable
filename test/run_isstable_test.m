
  %% run_spec
  clear;
  
  run('../load_toolbox.m');

  %% Test Vectors
  test = {};
  test(end+1).b = [1];               test(end).a = [1]';    test(end).expect = true;
  test(end+1).b = [0.5, 0.25, 0.25]; test(end).a = [1 0 0]; test(end).expect = true;
  test(end+1).b = [0.5, 0.25, 0.25]; test(end).a = [1 0.1 0.1]; test(end).expect = true;
  test(end+1).b = [0.5, 0.25, 0.25]; test(end).a = [1 1.1 0];   test(end).expect = false;

  %% The tests
  error_count = 0;
  pass_count  = 0;

  for vector=1:size(test, 2)
    b           = isstable(test(vector).b, test(vector).a );
    if (  ~isequal(b, test(vector).expect )  )
      disp('isstable() Failed ')
      error_count = error_count + 1;
    else
      pass_count  = pass_count  + 1;
    end
  end

  %% Test Status Report
  if error_count > 0
    disp(['Test FAILED : ', num2str(pass_count), ' passes and ',num2str(error_count),' fails'])
  else
    disp(['Test Passed : ', num2str(pass_count), ' checks ran '])
  end

