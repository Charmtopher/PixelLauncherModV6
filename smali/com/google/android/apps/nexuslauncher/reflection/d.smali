.class public Lcom/google/android/apps/nexuslauncher/reflection/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/p;)V
    .locals 1

    .line 31
    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/reflection/j;->a(Ljava/io/File;)V

    .line 38
    nop

    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->b([B)Lcom/google/android/apps/nexuslauncher/reflection/e/q;

    move-result-object p1

    .line 40
    iget p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    const/4 p1, -0x1

    .line 44
    :goto_0
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1

    .line 47
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/reflection/p;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/reflection/p;->dZ()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 49
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/google/android/apps/nexuslauncher/reflection/p;->w(Z)V

    return-void

    .line 51
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/google/android/apps/nexuslauncher/reflection/p;->w(Z)V

    return-void

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/j;->dX()Z

    .line 59
    return-void
.end method
