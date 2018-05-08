.class public Lcom/google/android/apps/nexuslauncher/reflection/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/signal/ReflectionPrivatePlace;


# instance fields
.field Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/f;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/e/k;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/f;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    .line 15
    return-void
.end method


# virtual methods
.method public final eD()Ljava/util/List;
    .locals 6

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/f;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/k;->Cz:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/f;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/k;->Cz:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 36
    invoke-static {}, Lcom/google/research/reflection/signal/ReflectionPrivatePlace$Alias;->values()[Lcom/google/research/reflection/signal/ReflectionPrivatePlace$Alias;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/f;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/k;->time:J

    return-wide v0
.end method
