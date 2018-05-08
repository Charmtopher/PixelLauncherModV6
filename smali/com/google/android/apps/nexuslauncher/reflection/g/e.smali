.class public Lcom/google/android/apps/nexuslauncher/reflection/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/signal/b;


# instance fields
.field Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/e/j;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/signal/ReflectionPrivatePlace;)Lcom/google/research/reflection/signal/b;
    .locals 1

    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/g/f;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/f;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    .line 65
    :goto_0
    return-object p0
.end method

.method public final a(Lcom/google/research/reflection/signal/a;)Lcom/google/research/reflection/signal/b;
    .locals 1

    .line 50
    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/g/d;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/d;->Eq:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    .line 55
    :goto_0
    return-object p0
.end method

.method public final a(Lcom/google/research/reflection/signal/c;)Lcom/google/research/reflection/signal/b;
    .locals 1

    .line 70
    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/g/g;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/g;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    .line 75
    :goto_0
    return-object p0
.end method

.method public final eA()Lcom/google/research/reflection/signal/ReflectionPrivatePlace;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/f;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dj:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/f;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/k;)V

    return-object v0
.end method

.method public final eB()Lcom/google/research/reflection/signal/c;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/g;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/g;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/l;)V

    return-object v0
.end method

.method public final eC()Lcom/google/research/reflection/signal/a;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/d;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->Dl:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/d;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/i;)V

    return-object v0
.end method
