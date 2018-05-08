.class public Lcom/google/android/apps/nexuslauncher/smartspace/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

.field public Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    .line 12
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    return-void
.end method


# virtual methods
.method public final eQ()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final eR()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final eS()Z
    .locals 4

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eQ()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    .line 47
    nop

    .line 49
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->eR()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->eL()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    .line 54
    nop

    .line 56
    move v0, v1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Ft:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->Fs:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
