.class public Lcom/google/android/apps/nexuslauncher/reflection/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/signal/c;


# instance fields
.field public Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/g;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/e/l;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/g;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    .line 13
    return-void
.end method


# virtual methods
.method public final eE()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/g;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/l;->Dm:Ljava/lang/String;

    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/g;->Dk:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/l;->time:J

    return-wide v0
.end method
