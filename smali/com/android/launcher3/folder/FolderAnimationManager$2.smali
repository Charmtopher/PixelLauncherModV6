.class Lcom/android/launcher3/folder/FolderAnimationManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 210
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setTranslationX(F)V

    .line 211
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 212
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setTranslationZ(F)V

    .line 213
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 214
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 215
    return-void
.end method
