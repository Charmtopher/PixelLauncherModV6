.class public Lcom/google/android/apps/nexuslauncher/reflection/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ca:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;)I
    .locals 2

    .line 45
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/m;

    iget-object v1, v1, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    return v0

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final j(Ljava/util/List;)Z
    .locals 4

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->Ca:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/predictor/m;

    iget-object v2, v2, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    const-string v3, "@instantapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 p1, 0x1

    return p1

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return v0
.end method
