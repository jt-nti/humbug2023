# Day 0

Just trying to figure out how to mainframe!

## HELLO.JCL

**Right-click > Submit as JCL** seems to work in Zowe Explorer, and the **Jobs** view shows the resulting job and the "HELLO MAINFRAME" output.

Alternatively, using the Zowe CLI,

```
zowe zos-jobs submit local-file "HELLO.JCL" --view-all-spool-content
```

See,
- https://medium.com/zowe/beginners-guide-how-to-access-mainframe-via-zowe-in-10-easy-steps-fbec14ed6ed2


## HELLO.CBL

Now for some Cobol!

See,
- https://medium.com/modern-mainframe/beginners-guide-cobol-made-easy-introduction-ecf2f611ac76
- https://github.com/IBM/cobol-is-fun

## ALLOCATE.JCL

Create some datasets for the mess that comes next!

```
zowe zos-jobs submit local-file "ALLOCATE.JCL" --view-all-spool-content
```

See,
- https://github.com/IBM/zopeneditor-sample/blob/main/JCL/ALLOCATE.jcl

## BUILD.JCL and RUN.JCL

😬

```
zowe zos-jobs submit local-file "BUILD.JCL" --view-all-spool-content
zowe zos-jobs submit local-file "RUN.JCL" --view-all-spool-content
```

See,
- https://medium.com/modern-mainframe/beginners-guide-cobol-made-easy-introduction-ecf2f611ac76
- https://www.ibm.com/docs/en/zos-basic-skills?topic=procedures-cobol-compile-link-procedure
- https://execpgm.org/compile-and-run-a-cobol-program-on-z-os-a-mini-tutorial/
- https://www.ibm.com/docs/en/cobol-zos/6.4?topic=jcl-writing-compile-programs
- https://github.com/IBM/zopeneditor-sample/blob/main/JCL/RUN.jcl
