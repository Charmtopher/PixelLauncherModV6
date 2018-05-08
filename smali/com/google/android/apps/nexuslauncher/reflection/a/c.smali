.class public Lcom/google/android/apps/nexuslauncher/reflection/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/research/reflection/predictor/g;)Lcom/google/android/apps/nexuslauncher/reflection/e/r;
    .locals 3

    .line 77
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/r;-><init>()V

    .line 78
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/google/research/reflection/predictor/g;->b(Ljava/io/DataOutputStream;)V

    .line 81
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 82
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Du:[B

    .line 83
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 84
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/g;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dt:Ljava/lang/String;

    .line 86
    instance-of v1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;

    if-nez v1, :cond_0

    .line 87
    return-object v0

    .line 90
    :cond_0
    check-cast p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;

    .line 92
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->je()I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dw:I

    .line 93
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->jd()I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dv:I

    .line 95
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->jf()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->a(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dx:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    .line 96
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->jb()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->b(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dy:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    .line 97
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ja()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->b(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->Dz:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    .line 98
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->jc()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/d;->b(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->DA:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    .line 100
    return-object v0
.end method
