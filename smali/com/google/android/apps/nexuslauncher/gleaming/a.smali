.class public Lcom/google/android/apps/nexuslauncher/gleaming/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;


# instance fields
.field mCancelled:Z

.field private final yY:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/a;->mCancelled:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/a;->yY:Ljava/util/function/Consumer;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/a;->mCancelled:Z

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/a;->yY:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method
