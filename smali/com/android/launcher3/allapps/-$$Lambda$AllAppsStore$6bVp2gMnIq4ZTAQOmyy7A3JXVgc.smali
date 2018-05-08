.class public final synthetic Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$6bVp2gMnIq4ZTAQOmyy7A3JXVgc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$IconAction;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/allapps/AllAppsStore;

.field private final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$6bVp2gMnIq4ZTAQOmyy7A3JXVgc;->f$0:Lcom/android/launcher3/allapps/AllAppsStore;

    iput-object p2, p0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$6bVp2gMnIq4ZTAQOmyy7A3JXVgc;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/launcher3/BubbleTextView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$6bVp2gMnIq4ZTAQOmyy7A3JXVgc;->f$0:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v1, p0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsStore$6bVp2gMnIq4ZTAQOmyy7A3JXVgc;->f$1:Ljava/util/Set;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->lambda$updateIconBadges$0(Lcom/android/launcher3/allapps/AllAppsStore;Ljava/util/Set;Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method
