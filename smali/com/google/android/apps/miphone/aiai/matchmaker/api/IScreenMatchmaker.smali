.class public interface abstract Lcom/google/android/apps/miphone/aiai/matchmaker/api/IScreenMatchmaker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract extractContentAsync(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/InteractionContextData;JLandroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IContentCallback;)Ljava/lang/String;
.end method

.method public abstract getEntitiesAsync(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/ContentData;JLandroid/graphics/Bitmap;Landroid/os/Bundle;Lcom/google/android/apps/miphone/aiai/matchmaker/api/IEntitiesCallback;)Ljava/lang/String;
.end method

.method public abstract registerSettingsCallback(Lcom/google/android/apps/miphone/aiai/matchmaker/api/ISettingsCallback;)Z
.end method

.method public abstract reportFeedback(Ljava/lang/String;Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;)V
.end method
