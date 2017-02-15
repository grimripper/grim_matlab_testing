% Project a point from 3D to 2D using a matrix operation

%% Given: Point p in 3D space (x,y,z) and focal length f
%% Return: Location of the projected point on 2D image plane [u,v]

function p_img = project_point(p,f)
    %% TODO: Define and apply projection matrix
    proj_matrix = [f 0 0 0; 0 f 0 0; 0 0 1 0];
    p_homogeneous = proj_matrix * [p 1]'
    p_img = [(p_homogeneous(1)/p_homogeneous(3)) (p_homogeneous(2)/p_homogeneous(3))];
end
