.class public Lcom/android/systemui/shared/system/ActivityCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mWrapped:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    .line 26
    return-void
.end method


# virtual methods
.method public registerRemoteAnimations(Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->mWrapped:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->getWrapped()Landroid/view/RemoteAnimationDefinition;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 33
    return-void
.end method
