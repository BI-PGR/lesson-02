#version 140
in vec3 position;

uniform mat4  mPVM;   // transformation matrix

uniform int iTask;     // task number

// ======== BEGIN OF SOLUTION - TASK 4-3 ======== //
// define the output variable color 
// ========  END OF SOLUTION - TASK 4-3  ======== //

// ======== BEGIN OF SOLUTION - TASK 3-6 ======== //
// declare the alpha uniform 
// alpha will be float and it will store an animation parameter in the interval [0, 1] 
// ========  END OF SOLUTION - TASK 3-6  ======== //

// ======== BEGIN OF SOLUTION - TASK 7-1 ======== //
// define the morphing between the original shape and the sphere 
// HINT: use the mix function, reference can be found on: 
//       http://www.khronos.org/files/opengl43-quick-reference-card.pdf 
//   and http://www.opengl.org/sdk/docs/manglsl/ 
vec3 toSphere(vec3 position, float alpha)
{
  vec3 center = vec3(0.0, 0.0, 0.0);
  float radius = 1.4;

  return position;
}
// ========  END OF SOLUTION - TASK 7-1  ======== //

void main()
{
  gl_Position = mPVM * vec4(position, 1.0) ;

  switch(iTask)
  {
    case 4:
    {
      // ======== BEGIN OF SOLUTION - TASK 4-4 ======== //
      // define a constant output variable color and set it to blue 
      // ========  END OF SOLUTION - TASK 4-4  ======== //
      break;
    }
    case 5:
    {
      // ======== BEGIN OF SOLUTION - TASK 5-1 ======== //
      // define the output variable color based on gl_VertexID 
      // ========  END OF SOLUTION - TASK 5-1  ======== //
      break;
    }
    case 6:
    {
      // ======== BEGIN OF SOLUTION - TASK 6-1 ======== //
      // set color.rgb according to the vertex position 
      // ========  END OF SOLUTION - TASK 6-1  ======== //
      break;
    }
    case 7:
    {
      // ======== BEGIN OF SOLUTION - TASK 7-2 ======== //
      // set color to white 
      // set position to the morphPosition between orig shape and a sphere 
      // ========  END OF SOLUTION - TASK 7-2  ======== //
      break;
    }
  }
}
