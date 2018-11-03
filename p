/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  4.1                                   |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    object      p;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 0;

boundaryField
{
   fixedWallsLeftTop
    {
        type            zeroGradient;
        nFaces          80;
        startFace       16640;
    }
    backFaceLeftTop
    {
        type            zeroGradient;
        nFaces          1680;
        startFace       16720;
    }
    frontFaceLeftTop
    {
        type            zeroGradient;
        nFaces          1680;
        startFace       18400;
    }
    symmetryWallLeftTop
    {
        type            zeroGradient;
        nFaces          40;
        startFace       20080;
    }
    topToBottom
    {
        type            empty;
        nFaces          80;
        startFace       20120;
    }
    plug
    {
        type            empty;
        nFaces          40;
        startFace       20200;
    }
    symmetryWallLeftBottom
    {
        type            symmetryPlane;
        nFaces          20;
        startFace       20240;
    }
    freeBoundryLeftBottom
    {
        type            zeroGradient;
        nFaces          20;
        startFace       20260;
    }
    leftSide
    {
        type            empty;
        nFaces          20;
        startFace       20280;
    }
    bottomToTop
    {
        type            patch;
        nFaces          20;
        startFace       20300;
    }
    backFaceLeftBottom
    {
        type            empty;
        nFaces          400;
        startFace       20320;
    }
    frontFaceLeftBottom
    {
        type            empty;
        nFaces          400;
        startFace       20720;
    }
    fixedWallsChannel
    {
        type            noSlip;
        nFaces          10;
        startFace       21120;
    }
    inlet
    {
        type            fixedValue;
        freeStreamValue uniform 0;
        nFaces          5;
        startFace       21130;
    }
    outlet
    {
        type            patch;
        nFaces          5;
        startFace       21135;
    }
    backFaceInletChannel
    {
        type            empty;
        nFaces          25;
        startFace       21140;
    }
    frontFaceInletChannel
    {
        type            empty;
        nFaces          25;
        startFace       21165;
    }
    freeBoundaryWalls
    {
        type            empty;
        nFaces          160;
        startFace       21190;
    }
    backFaceRight
    {
        type            empty;
        nFaces          6400;
        startFace       21350;
    }
    LeftRightWalls
    {
        type            patch;
        nFaces          80;
        startFace       27750;
    }
    frontFaceRight
    {
        type            empty;
        nFaces          6400;
        startFace       27830;
    }
    fixedWallsBottom
    {
        type            zeroGradient;
        nFaces          80;
        startFace       34230;
    }

}

// ********************************************************************* //