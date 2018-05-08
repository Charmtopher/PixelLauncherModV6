.class Lcom/google/android/apps/nexuslauncher/search/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final EA:Ljava/lang/String;

.field final EB:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

.field final Ez:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->Ez:Ljava/util/ArrayList;

    .line 102
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/f;->EA:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/f;->EB:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    .line 104
    return-void
.end method
